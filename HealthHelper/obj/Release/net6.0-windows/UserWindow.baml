   M S B A M L   `   `   `  ���� G  CHealthHelper, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null+clr-namespace:HealthHelperHealthHelper  ?$clr-namespace:HealthHelper.ViewModelHealthHelper.ViewModel  9!clr-namespace:HealthHelper.ModelsHealthHelper.Models  ?$clr-namespace:HealthHelper.ConverterHealthHelper.Converter      HealthHelper.UserWindow   W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     @d2http://schemas.microsoft.com/expression/blend/2008     ,localclr-namespace:HealthHelper     7local1$clr-namespace:HealthHelper.ViewModel     4models!clr-namespace:HealthHelper.Models     :	converter$clr-namespace:HealthHelper.Converter     -     �Name$  
userWindow�� � Title$ 
MainWindow��$	��800��$
��1366�� � WindowStartupLocation$ CenterScreen=� � 	Resources /   )HealthHelper.ViewModel.UserPanelViewModel   data3   -HealthHelper.Converter.EnumToBooleanConverter  EnumToBoolConverter)   #HealthHelper.Converter.IntConverter  IntConverter,   &HealthHelper.Converter.DoubleConverter  DoubleConverter  validationTemplate �� ElementName �� Path ��Name  textBoxInError �� 
TargetType �� Triggers	 P� Property
 P� Value �� Property �� Value �� Self �� RelativeSource��%�  &	        &	      &	 
     &	      &	      &	 �             �� .R��� .+�� .+��� 
�������
���   �$��1���� 
���  ��$��12(����� $ placeholder��$8 2AdornedElement.(Validation.Errors)[0].ErrorContent��� $ placeholder���� " �� P� 	 �@=�HasError$

 true��. ���  �@�ToolTip �� # Z $) #(Validation.Errors)[0].ErrorContent���  � ��$ 0q� � DataContext   .���� -    ��Name$ overallCanvas��$��0,0,0,-6q�.+��� -   $ canvasTitle��$��79��$	��460��$
��Left=� �� Left$ 30��
 �� Top$ 10��$	��Top=�.+��� $	��Top=�$��Health Helper �� �� Right$ 10��$ 75��$
��Wrap=�$ 10��$��48(�$��Bahnschrift)�$��Normal"�$��59��$	��299��$
��Left=����� ����  �� EndPoint$ 0.5,1&� �� 
StartPoint$ 0.5,0&�.���  � Color$ 	#FFFF08D4��� $ 	#FF05FFF9�� � Offset$ 1Q�� $ 	#FF0536FC��$ 0.986Q� J� Effect 3  -System.Windows.Media.Effects.DropShadowEffect     ShadowDepth$ 5Q�   	Direction$ 0Q�   Color$ 
DarkViolet��   Opacity$ 1Q�   
BlurRadius$ 8Q��� -    ��Name$ 	healthImg��$��../../img/cardiogram.png��$��60��$��60��$	 388��$ 10��   $ 0Q�$ 1Q�$ DeepPink��$ 1Q�$ 20Q� � Triggers :�   :� RoutedEvent$  Image.Loaded��.[��� .���� .��W� ! �� 
TargetName$! 	healthImg��" �� TargetProperty$" Opacity�# W� From# 1.0	$ W� To$ 0.1% g� Duration$% 0:0:1.5D�& g� AutoReverse$
& True��' g� RepeatBehavior$' Forever���� -   $ 
dataCanvas��$	��500��$	��900��$	��772��$	��575��$ 5��$ 94��$
��Left=�$��Center=�.+��� 
�������$��Nazwa użytkownika��$	 105��$ 34��$��30��$	��150��$��15(�$��Bahnschrift)�$��Normal"�( J� Opacity$	( 0.8Q�$��Center=�$	��Top=����� $ 0.5,1&�$ 0.5,0&�.��� $ 	#FFB79FC8��� $ 	#FF099FFF��$ 1Q�� $ 	#FF012034��$ 1Q��� -   ) ��Name$) nazwa��#��[ * =� ErrorTemplate#* [ 
�������$	 270��$ 34��$��30��$	��170��$��15(�$��Bahnschrift)�$��Medium"�$	( 0.8Q�$
��Left=�$��Center=�.������ $ 0.5,1&�$ 0.5,0&�.��� $ 	#FFB79FC8��� $ 	#FF099FFF��$ 1Q�� $ 	#FF012034��$ 1Q�.������ $ UserName�+ �� UpdateSourceTrigger$+ PropertyChanged=�, �� ValidatesOnExceptions$
, True��- �� ValidationRules- 5  /System.Windows.Controls.DataErrorValidationRule  .���� 
�������$��Wzrost [cm]��$	 105��$ 77��$��30��$	��150��$��15(�$��Bahnschrift)�$��Normal"�$	( 0.8Q�$��Center=�$	��Top=����� $ 0.5,1&�$ 0.5,0&�.��� $ 	#FFB79FC8��� $ 	#FF099FFF��$ 1Q�� $ 	#FF012034��$ 1Q��� -   $) wzrost��#��[ #* [ 
�������$	 270��$ 77��$��30��$	��170��$��15(�$��Bahnschrift)�$��Medium"�$	( 0.8Q�$
��Left=�$��Center=�.������ $ 0.5,1&�$ 0.5,0&�.��� $ 	#FFB79FC8��� $ 	#FF099FFF��$ 1Q�� $ 	#FF012034��$ 1Q�.������ $ Height�$+ PropertyChanged=�$
, True��-   .���� 
�������$
��Wiek��$	 105��$	 120��$��30��$	��150��$��15(�$��Bahnschrift)�$��Normal"�$	( 0.8Q�$��Center=�$	��Top=����� $ 0.5,1&�$ 0.5,0&�.��� $ 	#FFB79FC8��� $ 	#FF099FFF��$ 1Q�� $ 	#FF012034��$ 1Q��� -   $
) wiek��#��[ #* [ 
�������$	 270��$	 120��$��30��$	��170��$��15(�$��Bahnschrift)�$��Medium"�$	( 0.8Q�$
��Left=�$��Center=�.������ $ 0.5,1&�$ 0.5,0&�.��� $ 	#FFB79FC8��� $ 	#FF099FFF��$ 1Q�� $ 	#FF012034��$ 1Q�.������ $ YearsOld�$+ PropertyChanged=�$
, True��-   .���� 
�������$��	Waga [kg]��$	 105��$	 163��$��30��$	��150��$��15(�$��Bahnschrift)�$��Normal"�$	( 0.8Q�$��Center=�$	��Top=����� $ 0.5,1&�$ 0.5,0&�.��� $ 	#FFB79FC8��� $ 	#FF099FFF��$ 1Q�� $ 	#FF012034��$ 1Q��� -	   $
) waga��#��[ #* [ 
�������$	 270��$	 163��$��30��$	��170��$��15(�$��Bahnschrift)�$��Medium"�$	( 0.8Q�$
��Left=�$��Center=�.������ $ 0.5,1&�$ 0.5,0&�.��� $ 	#FFB79FC8��� $ 	#FF099FFF��$ 1Q�� $ 	#FF012034��$ 1Q�.������ $ Weight�$+ PropertyChanged=�$
, True��-   .���� -
   . ��Name$. cmdEditUser��
����� �$	 190��$	 287��$��60��$	��100��
����� �$��20(�$��Bahnschrift)�$��Medium"�$	( 0.6Q�$
��Left=�$	��Top=����� *cmdEditUser+.���� 
���   �$��Zapisz zmiany��$
��Wrap=�/ �� TextAlignment$/ Center=�0 � LayoutTransform0 �� 1 �� ScaleX$	1 1.5Q�2 �� ScaleY$	2 1.5Q����� " �� P� 	 �@J�IsMouseOver$

 True��3 N� EnterActions3 �� .���� .��t� $% 	0:0:0.250D�	4 t� To4 0$" BorderThickness�W� $% 	0:0:0.550D�$ 65$" Height�W� $% 	0:0:0.550D�$ 105$" Width�W� $% 	0:0:0.550D�$ 22$" FontSize��� 	5 �� To
5 Purple$1" +(Button.Foreground).(SolidColorBrush.Color)�6 g� FillBehavior$
6 Stop=�$% 	0:0:0.550D��� 5 MediumSpringGreen$1" +(Button.Background).(SolidColorBrush.Color)�$
6 Stop=�$% 	0:0:0.550D�7 N� ExitActions7 �� .���� .��t� $% 	0:0:0.250D�4 0$" BorderThickness�W� $% 	0:0:0.550D�$ 60$" Height�W� $% 	0:0:0.550D�$ 100$" Width�W� $% 	0:0:0.550D�$ 20$" FontSize��� 5 Cyan$1" +(Button.Foreground).(SolidColorBrush.Color)�$
6 Stop=�$% 	0:0:0.550D��� 5 Pink$1" +(Button.Background).(SolidColorBrush.Color)�$
6 Stop=�$% 	0:0:0.550D�   $ 1Q�$ 0Q�$ Violet��$ 1Q�$ 4Q��� $	��420��$	��272��$ 5��$	 120��$
��Left=�$
 1089��$��Center=�.+��� 
���   �$��	Wynik BMI��$	 280��$ 34��$��38��$	��240��$��24(�$��Bahnschrift)�$��Normal"�$	( 0.8Q�$��Center=�$	��Top=����� $ 0.5,1&�$ 0.5,0&�.��� $ yellow��� $ Coral��$ 1Q�� $ 	#FF012034��$ 1Q��� -   8 ��Name$8 wynikBMI��$
��Wrap=�
���   �$	 130��$ 34��$��38��$	��140��$��28(�$��Bahnschrift)�$��Medium"�$	( 0.8Q�$
��Left=�$��Center=�$/ Center=����� $ WynikBMI�$+ PropertyChanged=�9 �� Mode$9 TwoWay=����� $ 0.5,1&�$ 0.5,0&�.��� $ yellow��� $ Coral��$ 1Q�� $ 	#FF012034��$ 1Q��� -   $. descBMI��$
��Opis��
����İ�$ 20��$ 34��$��1q�$��38��$	��100��
���   �$��24(�$��Bahnschrift)�$��Medium"�$	( 0.8Q�$
��Left=�$	��Top=�0 �� $1 1Q�$2 1Q����� " �� P� 	 �@J�IsMouseOver$

 True��3 �� .���� .��t� $% 	0:0:0.250D�4 0$" BorderThickness�W� $% 	0:0:0.550D�$ 40$" Height�W� $% 	0:0:0.550D�$ 105$" Width�W� $% 	0:0:0.550D�$ 26$" FontSize��� 
5 Purple$1" +(Button.Foreground).(SolidColorBrush.Color)�$
6 Stop=�$% 	0:0:0.550D�7 �� .���� .��t� $% 	0:0:0.250D�4 0$" BorderThickness�W� $% 	0:0:0.550D�$ 38$" Height�W� $% 	0:0:0.550D�$ 100$" Width�W� $% 	0:0:0.550D�$ 24$" FontSize��� 	5 Black$1" +(Button.Foreground).(SolidColorBrush.Color)�$
6 Stop=�$% 	0:0:0.550D��� 
���   �$��	Wynik BMR��$	 280��$	 120��$��38��$	��240��$��24(�$��Bahnschrift)�$��Normal"�$	( 0.8Q�$��Center=�$	��Top=����� $ 0.5,1&�$ 0.5,0&�.��� $ yellow��� $ Coral��$ 1Q�� $ 	#FF012034��$ 1Q��� -   $8 wynikBMR��
���   �$	 130��$	 120��$��38��$	��140��$��28(�$��Bahnschrift)�$��Medium"�$	( 0.8Q�$
��Left=�$��Center=�$/ Center=����� $ WynikBMR�$+ PropertyChanged=�$9 TwoWay=����� $ 0.5,1&�$ 0.5,0&�.��� $ yellow��� $ Coral��$ 1Q�� $ 	#FF012034��$ 1Q��� -   $. descBMR��$
��Opis��
����İ�$ 20��$	 120��$��1q�$��38��$	��100��
���   �$��24(�$��Bahnschrift)�$��Medium"�$	( 0.8Q�$
��Left=�$	��Top=�0 �� $1 1Q�$2 1Q����� " �� P� 	 �@J�IsMouseOver$

 True��3 �� .���� .��t� $% 	0:0:0.250D�4 0$" BorderThickness�W� $% 	0:0:0.550D�$ 40$" Height�W� $% 	0:0:0.550D�$ 105$" Width�W� $% 	0:0:0.550D�$ 26$" FontSize��� 
5 Purple$1" +(Button.Foreground).(SolidColorBrush.Color)�$
6 Stop=�$% 	0:0:0.550D�7 �� .���� .��t� $% 	0:0:0.250D�4 0$" BorderThickness�W� $% 	0:0:0.550D�$ 38$" Height�W� $% 	0:0:0.550D�$ 100$" Width�W� $% 	0:0:0.550D�$ 24$" FontSize��� 	5 Black$1" +(Button.Foreground).(SolidColorBrush.Color)�$
6 Stop=�$% 	0:0:0.550D�� $ 30��$	 440��.+�� : �� Stretch$
: Fill=�
��� ���; � Pointsg; �   �<6��ig��<6��ig��<6���� �ZQ��ig��<6��<6��<6� ��� ����<6��<6��ig��ig�   $ 2Q�$	 120Q�$	 Red��$ 1Q�$ 5Q��� $��Cofnij��$��50 5 10 10 q�$��24(�$��Medium"�$��30��$��70��$	( 0.9Q�
���  ��$
��Left=�$��Center=��� -   
������ $��0q�
������ $��45��$	��100��
����� �$��24(�$��Bahnschrift)�$��Medium"�$	( 0.1Q�$
��Left=�$	��Top=�0 �� $1 2Q�$2 2Q�