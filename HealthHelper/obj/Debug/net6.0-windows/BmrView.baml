   M S B A M L   `   `   `  ����G  CHealthHelper, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null+clr-namespace:HealthHelperHealthHelper  5   	       HealthHelper.BmrView   5   	   W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   ,localclr-namespace:HealthHelper     5   	   -   5          �Name$  	BmrWindow��5	   /    � Title$ Bmr Opis��6   $	��600��6   $	��350��6#    � WindowStartupLocation$ CenterScreen=�6B   $	��600��6h   $	��350��6x   .��5
      �  � ColumnDefinitions 5   
   �� 5      $��1* �6    � RowDefinitions 5   
   �� 5      $��1* �6   �� 5      $
��3.1* �6   �� 5      $��1* �6   �� 5      $��1* �6   �� 5      $��1* �6   �� 5      $��1* �6   �� 5      $��1* �6   �� 5      $��1* �6   .+�5   
   �� -   5         ��Name$ wynikBMR��5   .   $��0��6   $
��Opis��6"   
���   �$��28(�5      $��Bahnschrift)�6$   $��Medium"�6=    J� Opacity$	 0.8Q�6Q    �� TextAlignment$ Center=�5      ��5      �� 5       �� EndPoint$ 0.5,1&�6&   	 �� 
StartPoint$	 0.5,0&�67   .��5       � 
 � Color$
 yellow��6#   � 5!      $
 Coral��6#    � Offset$ 1Q�61   � 5"      $
 Purple��6#   $ 1Q�62   5#      5%      �� 5&   
   -   5        $
 opis��5(   P  $��1��5&      $����Zapotrzebowanie kaloryczne możemy zwiększyć poprzez zwiększenie współczynnika aktywności fizycznej.  W zależności od codziennej aktywności, rzeczywiste dziennie zapotrzebowanie kaloryczne może się znacznie różnić od wyliczonej podstawowej przemiany materii. Dlatego aby dokładniej oszacować ilość potrzebnym nam kalorii, wyliczone zapotrzebowanie BMR należy pomnożyć przez współczynnik aktywności fizycznej (PAL).��6"   $
��Wrap=�5(   <  
�������$��14(�5)      $��Bahnschrift)�6$   $��Medium"�6=   $	 0.8Q�6Q   ��5+      �� 5,      $ 0.5,1&�6&   $	 0.5,0&�67   .��5-      � $
 Purple��6#   � 5.      $
 Coral��6#   $ 1Q�61   50      52      �� 53   
   $��2��6   $|��vwynik  - siedzący tryb życia                                           (nie wykazujesz żadnej aktywności ruchowej)��6"   $
��Wrap=�55   C   
�������$��14(�56      $��Bahnschrift)�6$   $��Medium"�6=   $	 0.8Q�6Q   $ Center=�57      ��58      �� 59      $ 0.5,1&�6&   $	 0.5,0&�67   .��5:      � $
 Coral��6#   $ 1Q�62   5=      5?      �� 5@   
   $��3��6   $t��nwynik * 1.2 - bardzo mała aktywność                       (praca biurowa, brak treningu, trochę chodzenia)��6"   $
��Wrap=�5A   G   
�������$��14(�5B      $��Bahnschrift)�6$   $��Medium"�6=   $	 0.8Q�6Q   $ Center=�5C      ��5D      �� 5E      $ 0.5,1&�6&   $	 0.5,0&�67   .��5G      � $
 Coral��6#   $ 1Q�62   5J      5L      �� 5M   
   $��4��6   $����wynik * 1.4 - mała aktywność                                      (brak treningu, praca może wymagać lekkiego wysiłku fizycznego)��6"   $
��Wrap=�5N   c   
�������$��14(�5O      $��Bahnschrift)�6$   $��Medium"�6=   $	 0.8Q�6Q   $ Center=�5P      ��5Q      �� 5R      $ 0.5,1&�6&   $	 0.5,0&�67   .��5S      � $
 Coral��6#   $ 1Q�61   5V      5X      �� 5Y   
   $��5��6   $����wynik * 1.6 - umiarkowana aktywność                      (praca nie wymaga dużego wysiłku fizycznego, ale prowadzimy regularne treningi)��6"   $
��Wrap=�5Z   g   
�������$��14(�5[      $��Bahnschrift)�6$   $��Medium"�6=   $	 0.8Q�6Q   $ Center=�5\      ��5]      �� 5^      $ 0.5,1&�6&   $	 0.5,0&�67   .��5`      � $
 Coral��6#   $ 1Q�61   5b      5d      �� 5e   
   $��6��6   $����wynik * 1,8 - wysoka aktywność                      (codziennie treningi, praca o charakterze fizycznym lub aktywny tryb życia)��6"   $
��Wrap=�5f   c   
�������$��14(�5g      $��Bahnschrift)�6$   $��Medium"�6=   $	 0.8Q�6Q   $ Center=�5h      ��5i      �� 5j      $ 0.5,1&�6&   $	 0.5,0&�67   .��5k      � $
 Coral��6#   $ 1Q�63   5n      5p      �� 5q   
   $��7��6   $}��wwynik * 2.0 - bardzo wysoka aktywność                     (trening dwa razy dziennie, bardzo ciężka fizyczna praca)��6"   $
��Wrap=�5r   Q   
�������$��14(�5s      $��Bahnschrift)�6$   $��Medium"�6=   $	 0.8Q�6Q   $ Center=�5t      ��5u      �� 5v      $ 0.5,1&�6&   $	 0.5,0&�67   .��5x      � $
 Coral��6#   � 5y      $
 purple��6#   $ 1Q�63   5{      5}      5~      5      