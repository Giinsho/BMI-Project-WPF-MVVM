   M S B A M L   `   `   `  ���� G  CHealthHelper, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null+clr-namespace:HealthHelperHealthHelper      HealthHelper.BmrView   W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     ,localclr-namespace:HealthHelper     -     �Name$  	BmrWindow�� � Title$ Bmr Opis��$	��600��$	��350�� � WindowStartupLocation$ CenterScreen=�$	��600��$	��350��.���  � ColumnDefinitions �� $��1* � � RowDefinitions �� $��1* ��� $
��3.1* ��� $��1* ��� $��1* ��� $��1* ��� $��1* ��� $��1* ��� $��1* �.+��� -    ��Name$ wynikBMR��$��0��$
��Opis��
���   �$��28(�$��Bahnschrift)�$��Medium"� J� Opacity$	 0.8Q� �� TextAlignment$ Center=�����  �� EndPoint$ 0.5,1&�	 �� 
StartPoint$	 0.5,0&�.��� 
 � Color$
 yellow��� $
 Coral�� � Offset$ 1Q�� $
 Purple��$ 1Q��� -   $
 opis��$��1��$����Zapotrzebowanie kaloryczne możemy zwiększyć poprzez zwiększenie współczynnika aktywności fizycznej.  W zależności od codziennej aktywności, rzeczywiste dziennie zapotrzebowanie kaloryczne może się znacznie różnić od wyliczonej podstawowej przemiany materii. Dlatego aby dokładniej oszacować ilość potrzebnym nam kalorii, wyliczone zapotrzebowanie BMR należy pomnożyć przez współczynnik aktywności fizycznej (PAL).��$
��Wrap=�
�������$��14(�$��Bahnschrift)�$��Medium"�$	 0.8Q����� $ 0.5,1&�$	 0.5,0&�.��� $
 Purple��� $
 Coral��$ 1Q��� $��2��$|��vwynik  - siedzący tryb życia                                           (nie wykazujesz żadnej aktywności ruchowej)��$
��Wrap=�
�������$��14(�$��Bahnschrift)�$��Medium"�$	 0.8Q�$ Center=����� $ 0.5,1&�$	 0.5,0&�.��� $
 Coral��$ 1Q��� $��3��$t��nwynik * 1.2 - bardzo mała aktywność                       (praca biurowa, brak treningu, trochę chodzenia)��$
��Wrap=�
�������$��14(�$��Bahnschrift)�$��Medium"�$	 0.8Q�$ Center=����� $ 0.5,1&�$	 0.5,0&�.��� $
 Coral��$ 1Q��� $��4��$����wynik * 1.4 - mała aktywność                                      (brak treningu, praca może wymagać lekkiego wysiłku fizycznego)��$
��Wrap=�
�������$��14(�$��Bahnschrift)�$��Medium"�$	 0.8Q�$ Center=����� $ 0.5,1&�$	 0.5,0&�.��� $
 Coral��$ 1Q��� $��5��$����wynik * 1.6 - umiarkowana aktywność                      (praca nie wymaga dużego wysiłku fizycznego, ale prowadzimy regularne treningi)��$
��Wrap=�
�������$��14(�$��Bahnschrift)�$��Medium"�$	 0.8Q�$ Center=����� $ 0.5,1&�$	 0.5,0&�.��� $
 Coral��$ 1Q��� $��6��$����wynik * 1,8 - wysoka aktywność                      (codziennie treningi, praca o charakterze fizycznym lub aktywny tryb życia)��$
��Wrap=�
�������$��14(�$��Bahnschrift)�$��Medium"�$	 0.8Q�$ Center=����� $ 0.5,1&�$	 0.5,0&�.��� $
 Coral��$ 1Q��� $��7��$}��wwynik * 2.0 - bardzo wysoka aktywność                     (trening dwa razy dziennie, bardzo ciężka fizyczna praca)��$
��Wrap=�
�������$��14(�$��Bahnschrift)�$��Medium"�$	 0.8Q�$ Center=����� $ 0.5,1&�$	 0.5,0&�.��� $
 Coral��� $
 purple��$ 1Q�