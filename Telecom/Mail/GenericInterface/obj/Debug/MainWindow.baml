   M S B A M L   `   `   `  ����K  GGenericInterface, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null3clr-namespace:GenericInterfaceGenericInterface  5   	   !    GenericInterface.MainWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   0localclr-namespace:GenericInterface     5   	     � Title$  
MainWindow��5   	   $	��450��6   $	��800��6)    � 
ResizeMode$ NoResize=�5	   	   .��5
      � -   5         �Name$ MainGrid��5
      
������� � RowDefinitions 5   
   �� 5      6   �� 5      6   �� 5      6   �� 5      6   �� 5      6    � ColumnDefinitions 5   
   �� 5      6!   �� 5      6!   �� 5      6!   �� 5      $��5 �6   6+   �� 5      6!   �� 5      6!   �� 5      6!   .+�5   
   �� -   5         ��Name$ GridSplitter��5      $��3��5      $��5��5      
�������$��Stretch=�5       �� 5$   
   -   5         ��Name$
 From��5$      $��4��5%      $��Stretch=�5&       �� TextWrapping$
 Wrap=�5'      $��example@example.com��5(      $��Center=�5)      �� 5*   
   $��4��5+      $��Center=�5,      $
��Wrap=�5-      $��От кого��5.      $	��Top=�5/      �� 51   
   -   5        $ To��51      $��5��52      $��Stretch=�53      $
 Wrap=�54      $��example@example.com��55      $��Center=�56      �� 57   
   $��5��58      $��Center=�59      $
��Wrap=�5:      $��Кому��5;      $	��Top=�5<      �� 5>   
   -   5        $
 Mail��5>      $��3��5?      $��4��5@      $��1��5A      $��Stretch=�5C      $��Stretch=�5D      ��5B      ��  �� ElementName$ MainGrid��	 �� Path$	 RowDefinitions.Count�5D      �� 5F   
   -   5        
 ��Name$

 Send��5F      $��6��5G      $��Center=�5H      $��Center=�5I      $��Отправить��5J      5K      �� 5R   
   -   5         ��Name$ StackContainer��5R      $��Stretch=�5S      $��Stretch=�5T      $��1��5U      $��0��5V      $��4��5W      $��3��5X      �� 5[   
   -   5        $ 	FromFetch��5[      $��Stretch=�5\      $
 Wrap=�5]      $��example@example.com��5^      $��Center=�5_      �� 5a   
   -	   5         ��Name$
 Addr��5a      $��Center=�5b      $
��Wrap=�5c      $��
Адрес��5d      $	��Top=�5e      �� 5g   
   -
   5        $ 
MailHeader��5g      $��1��5h      $��Center=�5i      $
��Wrap=�5j      $��Письма��5k      $��Bottom=�5l      �� 5n   
   -   5        $
 Fetch��5n      $��2��5o      $��Center=�5p      $��Center=�5q      $��Получить��5r      5s      5v      5x      