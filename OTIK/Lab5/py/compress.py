import headers
from decimal import *
import functools

RANGE = 30

def around(a,b):
    if a - RANGE < b or a + RANGE > b:
        return True
    else:
        return False

class FileOp:
    def __init__(self, file_header):
        self.file_header = file_header
        self.sorted_freq = [(b, self.file_header.byte_freq[b]) for b in sorted(self.file_header.byte_freq, key=self.file_header.byte_freq.get, reverse=False)]

    @functools.lru_cache(maxsize=256*2)
    def cum_freq(self, until_b, include=True):
        sum = 0

        for b, f in self.sorted_freq:
            if b == until_b:
                if include:
                    sum += f
                break
            sum += f

        return sum

    def compress(self, data):
        getcontext().prec = 999999
        l = Decimal(0)
        h = Decimal(1)
        encoded = None

        for b in data:
            r = h - l
            h = l + r*Decimal(self.cum_freq(b))
            l = l + r*Decimal(self.cum_freq(b,include=False))
        number_repr_block = (l+h)/2
        encoded = number_repr_block
        return encoded

    def decompress(self, number):
        getcontext().prec = 999999
        l = Decimal(0)
        h = Decimal(1)
        decoded = []

        for i in range(0,self.file_header.original_size-1):
            byte = None
            for b in range(0,255):
                r = h - l
                h = l + r*Decimal(self.cum_freq(b))
                l = l + r*Decimal(self.cum_freq(b,include=False))
                byte = b
                if l <= number and number < h:
                    break
            decoded.append(byte)
        return decoded
