   M S B A M L   `   `   `  ���� G  CHealthHelper, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null+clr-namespace:HealthHelperHealthHelper      HealthHelper.BmiView   W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     ,localclr-namespace:HealthHelper     -     �Name$  	BmiWindow�� � Title$ Bmi Opis��$	��500��$	��250�� � WindowStartupLocation$ CenterScreen=�$	��500��$	��250��.���  � ColumnDefinitions �� $��1* � � RowDefinitions �� $��1* ��� $
��3.1* ��� $��1* ��� $��1* ��� $��1* ��� $��1* ��� $��1* ��� $��1* �.+��� -    ��Name$ wynikBMR��$��0��$
��Opis��
���   �$��28(�$��Bahnschrift)�$��Medium"� J� Opacity$	 0.8Q� �� TextAlignment$ Center=�����  �� EndPoint$ 0.5,1&�	 �� 
StartPoint$	 0.5,0&�.��� 
 � Color$
 yellow��� $
 Coral�� � Offset$ 1Q�� $
 Purple��$ 1Q��� -   $
 opis��$��1��$����U dorosłych interpretacja wyniku współczynnika BMI zależna jest od płci i aby stwierdzić, czy ma się niedowagę, nadwagę lub otyłość stosuje się poniższą klasyfikację��$
��Wrap=�
�������$��14(�$��Bahnschrift)�$��Medium"�$	 0.8Q����� $ 0.5,1&�$	 0.5,0&�.��� $
 Purple��� $
 Coral��$ 1Q��� $��2��$!��poniżej 18,5 – niedowaga��$
��Wrap=�
�������$��14(�$��Bahnschrift)�$��Medium"�$	 0.8Q�$ Center=����� $ 0.5,1&�$	 0.5,0&�.��� $
 Coral��$ 1Q��� $��3��$,��&18,5–24,99 – wartość prawidłowa��$
��Wrap=�
�������$��14(�$��Bahnschrift)�$��Medium"�$	 0.8Q�$ Center=����� $ 0.5,1&�$	 0.5,0&�.��� $
 Coral��$ 1Q��� $��4��$��25,0–29,99 – nadwaga��$
��Wrap=�
�������$��14(�$��Bahnschrift)�$��Medium"�$	 0.8Q�$ Center=����� $ 0.5,1&�$	 0.5,0&�.��� $
 Coral��$ 1Q��� $��5��$+��%30,0–34,99 – otyłość I stopnia��$
��Wrap=�
�������$��14(�$��Bahnschrift)�$��Medium"�$	 0.8Q�$ Center=����� $ 0.5,1&�$	 0.5,0&�.��� $
 Coral��$ 1Q��� $��6��$,��&35,0–39,99 – otyłość II stopnia��$
��Wrap=�
�������$��14(�$��Bahnschrift)�$��Medium"�$	 0.8Q�$ Center=����� $ 0.5,1&�$	 0.5,0&�.��� $
 Coral��$ 1Q��� $��7��$J��Dpowyżej 40,0 – otyłość III stopnia (tzw. otyłość olbrzymia)��$
��Wrap=�
�������$��14(�$��Bahnschrift)�$��Medium"�$	 0.8Q�$ Center=����� $ 0.5,1&�$	 0.5,0&�.��� $
 Coral��� $
 purple��$ 1Q�