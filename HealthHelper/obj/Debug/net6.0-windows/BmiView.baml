   M S B A M L   `   `   `  ����G  CHealthHelper, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null+clr-namespace:HealthHelperHealthHelper  5   	       HealthHelper.BmiView   5   	   W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   ,localclr-namespace:HealthHelper     5   	   -   5          �Name$  	BmiWindow��5   3    � Title$ Bmi Opis��6	   $	��500��6   $	��250��6'    � WindowStartupLocation$ CenterScreen=�6F   $	��500��6k   $	��250��6{   .��5	      �  � ColumnDefinitions 5
   
   �� 5      $��1* �6    � RowDefinitions 5   
   �� 5      $��1* �6   �� 5      $
��3.1* �6   �� 5      $��1* �6   �� 5      $��1* �6   �� 5      $��1* �6   �� 5      $��1* �6   �� 5      $��1* �6   �� 5      $��1* �6   .+�5   
   �� -   5         ��Name$ wynikBMR��5   .   $��0��6   $
��Opis��6"   
���   �$��28(�5      $��Bahnschrift)�6$   $��Medium"�6=    J� Opacity$	 0.8Q�6Q    �� TextAlignment$ Center=�5      ��5      �� 5       �� EndPoint$ 0.5,1&�6&   	 �� 
StartPoint$	 0.5,0&�67   .��5      � 
 � Color$
 yellow��6#   � 5       $
 Coral��6#    � Offset$ 1Q�61   � 5!      $
 Purple��6#   $ 1Q�62   5"      5$      �� 5%   
   -   5        $
 opis��5%   �   $��1��6   $����U dorosłych interpretacja wyniku współczynnika BMI zależna jest od płci i aby stwierdzić, czy ma się niedowagę, nadwagę lub otyłość stosuje się poniższą klasyfikację��6"   $
��Wrap=�6�   
�������$��14(�5&      $��Bahnschrift)�6$   $��Medium"�6=   $	 0.8Q�6Q   ��5(      �� 5)      $ 0.5,1&�6&   $	 0.5,0&�67   .��5*      � $
 Purple��6#   � 5+      $
 Coral��6#   $ 1Q�61   5-      5/      �� 50   
   $��2��6   $!��poniżej 18,5 – niedowaga��6"   $
��Wrap=�6C   
�������$��14(�51      $��Bahnschrift)�6$   $��Medium"�6=   $	 0.8Q�6Q   $ Center=�52      ��53      �� 54      $ 0.5,1&�6&   $	 0.5,0&�67   .��55      � $
 Coral��6#   $ 1Q�62   58      5:      �� 5;   
   $��3��6   $,��&18,5–24,99 – wartość prawidłowa��6"   $
��Wrap=�6J   
�������$��14(�5<      $��Bahnschrift)�6$   $��Medium"�6=   $	 0.8Q�6Q   $ Center=�5=      ��5>      �� 5?      $ 0.5,1&�6&   $	 0.5,0&�67   .��5A      � $
 Coral��6#   $ 1Q�62   5D      5F      �� 5G   
   $��4��6   $��25,0–29,99 – nadwaga��6"   $
��Wrap=�6?   
�������$��14(�5H      $��Bahnschrift)�6$   $��Medium"�6=   $	 0.8Q�6Q   $ Center=�5I      ��5J      �� 5K      $ 0.5,1&�6&   $	 0.5,0&�67   .��5L      � $
 Coral��6#   $ 1Q�61   5O      5Q      �� 5R   
   $��5��6   $+��%30,0–34,99 – otyłość I stopnia��6"   $
��Wrap=�6I   
�������$��14(�5S      $��Bahnschrift)�6$   $��Medium"�6=   $	 0.8Q�6Q   $ Center=�5T      ��5U      �� 5V      $ 0.5,1&�6&   $	 0.5,0&�67   .��5X      � $
 Coral��6#   $ 1Q�61   5Z      5\      �� 5]   
   $��6��6   $,��&35,0–39,99 – otyłość II stopnia��6"   $
��Wrap=�6J   
�������$��14(�5^      $��Bahnschrift)�6$   $��Medium"�6=   $	 0.8Q�6Q   $ Center=�5_      ��5`      �� 5a      $ 0.5,1&�6&   $	 0.5,0&�67   .��5b      � $
 Coral��6#   $ 1Q�63   5e      5g      �� 5h   
   $��7��6   $J��Dpowyżej 40,0 – otyłość III stopnia (tzw. otyłość olbrzymia)��6"   $
��Wrap=�6f   
�������$��14(�5i      $��Bahnschrift)�6$   $��Medium"�6=   $	 0.8Q�6Q   $ Center=�5j      ��5k      �� 5l      $ 0.5,1&�6&   $	 0.5,0&�67   .��5n      � $
 Coral��6#   � 5o      $
 purple��6#   $ 1Q�63   5q      5s      5t      5u      