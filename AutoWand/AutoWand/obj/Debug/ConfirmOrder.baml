   M S B A M L   `   `   `  ����C  ?AutoWand, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null#clr-namespace:AutoWandAutoWand  5   	       AutoWand.ConfirmOrder   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   (localclr-namespace:AutoWand     5   	     � Title$  Confirm Order - AutoWand��5   	   $	��700��6*   $��466.189��67    � 
ResizeMode$ NoResize=�6G   .��5	      ]� .+�5
   
   �� $	��Top=�6   .+�5      ��  �� Orientation$ 
Horizontal=�6   .+�5      �� $��	Employee:��6   �� 5      -   5         ��Name$ userInfo��5      $��  ��6*   5      �� 5      $ 
Horizontal=�6   .+�5      �� $��Customer Info:��6   �� 5      -   5        $ custInfo��5      $��  ��6*   5      �� 5      $ 
Horizontal=�6   .+�5      �� $��Vehicle Info:��6   �� 5      -   5        $ vicInfo��5      $��  ��6)   5      �� 5      -   5         ��Name$ servicesList��5      $	��430��6-   $	��390��6:   �� 5      $ 
Horizontal=�6   $��Center=�62   .+�5      �� $��Cost Of Labor:��6   �� 5      -   5        $ 
laborTotal��5      $��  ��6,   5      �� 5!      $ 
Horizontal=�6   $��Center=�62   .+�5"      �� $��Parts Total:��6   �� 5#      -   5        $ 
partsTotal��5#      $��  ��6,   5$      �� 5&      $ 
Horizontal=�6   $��Center=�62   .+�5'      �� $��	Subtotal:��6   �� 5(      -   5        $ subtotal��5(      $��  ��6*   5)      �� 5+      $ 
Horizontal=�6   $��Center=�62   .+�5,      �� $
��Tax:��6   �� 5-      -   5        $ taxLabel��5-      $��  ��6*   5.      �� 50      $ 
Horizontal=�6   $��Center=�62   .+�51      �� $��Total:��6   �� 52      -	   5        $ Total��52      $��  ��6'   53      �� 55      $ 
Horizontal=�6   $��Center=�62   .+�56      �� -
   5         ��Name$ SubmitButton��56      $��Confirm Order��6/   6G   �� 57      $��  ��6   �� 58      -   5        $ CancelButton��58      $��Cancel Order��6/   6F   59      5:      5;      5<      