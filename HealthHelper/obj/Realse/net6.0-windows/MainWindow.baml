   M S B A M L   `   `   `  ���� G  CHealthHelper, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null+clr-namespace:HealthHelperHealthHelper  ?$clr-namespace:HealthHelper.ViewModelHealthHelper.ViewModel  9!clr-namespace:HealthHelper.ModelsHealthHelper.Models  ?$clr-namespace:HealthHelper.ConverterHealthHelper.Converter      HealthHelper.MainWindow   W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     ,localclr-namespace:HealthHelper     7local1$clr-namespace:HealthHelper.ViewModel     4models!clr-namespace:HealthHelper.Models     :	converter$clr-namespace:HealthHelper.Converter     -     �Name$  
mainWindow�� � Title$ UserView��$	��800��$
��1366�� � WindowStartupLocation$ CenterScreen=� � 	Resources *   $HealthHelper.ViewModel.UserViewModel   data  	Converter3   -HealthHelper.Converter.EnumToBooleanConverter  EnumToBoolConverter)   #HealthHelper.Converter.IntConverter  IntConverter,   &HealthHelper.Converter.DoubleConverter  DoubleConverter  validationTemplate �� ElementName �� Path ��Name �� 
TargetType �� Triggers	 :� RoutedEvent
 �� Source  textBoxInError P� Property P� Value �� Property �� Value �� Self �� RelativeSource  ItemContainerStyle��%�  &	        &	      &	 
     &	      &	      &	      '�� �     &	 4    &	 �      ��       �� .R��� .+�� .+��� 
�������
���   �$��1���� 
���  ��$��12(����� $ placeholder��$8 2AdornedElement.(Validation.Errors)[0].ErrorContent��� $ placeholder���� " �� :� $	 PreviewMouseDown��.[��� $)
 #/ClickingButton;component/click.wav?��� " �� P�  �@=�HasError$
 true��. ���  �@�ToolTip �� # Z $) #(Validation.Errors)[0].ErrorContent���  � ��$ 0q��� " �� P�  �@��AlternationIndex$ 0��. ���  � ��
 ��d���  � ��
 �   �P�  �@��AlternationIndex$ 1��. ���  � ��
 ��ح���  � ��
 ��  �P�  �@��
IsSelected$
 True��. ���  � ��$ 20(���  � ��
 ��p����  � ��
 �����P�  �@J�IsMouseOver$
 True��. ���  � ��
 � �����  � ��
 �   � � DataContext   .���� -    ��Name$ 
mainCanvas��$��0,0,0,-6q�.+��� -   $ canvasTitle��$��79��$	��460��$
��Left=� �� Left$ 30��
 �� Top$ 10��$	��Top=�.+��� $	��Top=�$��Health Helper �� �� Right$ 10��$ 75��$
��Wrap=�$ 10��$��48(�$��Bahnschrift)�$��Normal"�$��59��$	��299��$
��Left=����� ����  �� EndPoint$ 0.5,1&� �� 
StartPoint$ 0.5,0&�.���  � Color$ 	#FFFF08D4��� $ 	#FF05FFF9�� � Offset$ 1Q�� $ 	#FF0536FC��$ 0.986Q� J� Effect 3  -System.Windows.Media.Effects.DropShadowEffect     ShadowDepth$ 5Q�   	Direction$ 0Q�   Color$ 
DarkViolet��   Opacity$ 1Q�   
BlurRadius$ 8Q��� -     ��Name$  	healthImg��$��../../img/cardiogram.png��$��60��$��60��$	 388��$ 10��   $ 0Q�$ 1Q�$ DeepPink��$ 1Q�$ 20Q�! � Triggers! :� $	 Image.Loaded��.[��� .���� .��W� " �� 
TargetName$" 	healthImg��# �� TargetProperty$# Opacity�$ W� From$ 1.0	% W� To% 0.1& g� Duration$& 0:0:1.5D�' g� AutoReverse$
' True��( g� RepeatBehavior$( Forever���� -   $ 
userCanvas��$	��500��$	��900��$	��963��$	��575��$ 5��$ 94��$
��Left=�$	��Top=�.+��� 
����� �$��Nazwa użytkownika��$	 105��$ 34��$��38��$	��240��$��24(�$��Bahnschrift)�$��Normal"�) J� Opacity$	) 0.8Q�$��Center=�$	��Top=����� $ 0.5,1&�$ 0.5,0&�.��� $ 	#FFB79FC8��� $ 	#FF099FFF��$ 1Q�� $ 	#FF012034��$ 1Q��� -   * ��Name$* nazwa��#��[ + =� ErrorTemplate#+ [ 
����� �$	 370��$ 34��$��38��$	��312��$��24(�$��Bahnschrift)�$��Medium"�$	) 0.8Q�$
��Left=�$��Center=�.������ $ UserName�, �� UpdateSourceTrigger$, PropertyChanged=�- �� ValidatesOnExceptions$
- True��. �� ValidationRules. 5  /System.Windows.Controls.DataErrorValidationRule  .������ $ 0.5,1&�$ 0.5,0&�.��� $ 	#FFB79FC8��� $ 	#FF099FFF��$ 1Q�� $ 	#FF012034��$ 1Q�.���� $	 370��$ 39��$��38��$	��221��$��24(�$��Bahnschrift)�$��Medium"�$) 1Q�/ J� IsHitTestVisible$/ False��$��Użytkownik��$��Center=�$
��Left=�$��10,0,0,0q�
����������� " ��.���  � y�$ 	Collapsed=� �� 0 �� Binding0 �� *Text+$ nazwa��1 �� Value1  .a���  � y�$ Visible=��� 
����� �$��Wzrost [cm]��$	 105��$ 77��$��38��$	��240��$��24(�$��Bahnschrift)�$��Normal"�$	) 0.8Q�$��Center=�$	��Top=����� $ 0.5,1&�$ 0.5,0&�.��� $ 	#FFB79FC8��� $ 	#FF099FFF��$ 1Q�� $ 	#FF012034��$ 1Q��� -   $* wzrost��#��[ #+ [ 
����� �$	 370��$ 77��$��38��$	��312��$��24(�$��Bahnschrift)�$��Medium"�$	) 0.8Q�$
��Left=�$��Center=�.������ 2 �� 	Converter#2 [ $ Height�$, PropertyChanged=�$
- True��.   .������ $ 0.5,1&�$ 0.5,0&�.��� $ 	#FFB79FC8��� $ 	#FF099FFF��$ 1Q�� $ 	#FF012034��$ 1Q�.���� $	 370��$ 82��$��38��$	��221��$��24(�$��Bahnschrift)�$��Medium"�$) 1Q�$/ False��$	��165��$��Center=�$
��Left=�$��10,0,0,0q�
����������� " ��.���  � y�$ 	Collapsed=� �� 0 �� *Text+$ wzrost��1  .a���  � y�$ Visible=��� 
����� �$
��Wiek��$	 105��$	 120��$��38��$	��240��$��24(�$��Bahnschrift)�$��Normal"�$	) 0.8Q�$��Center=�$	��Top=����� $ 0.5,1&�$ 0.5,0&�.��� $ 	#FFB79FC8��� $ 	#FF099FFF��$ 1Q�� $ 	#FF012034��$ 1Q��� -   $
* wiek��#��[ #+ [ 
����� �$	 370��$	 120��$��38��$	��312��$��24(�$��Bahnschrift)�$��Medium"�$	) 0.8Q�$
��Left=�$��Center=�.������ #2 [ $ YearsOld�$, PropertyChanged=�$
- True��.   .������ $ 0.5,1&�$ 0.5,0&�.��� $ 	#FFB79FC8��� $ 	#FF099FFF��$ 1Q�� $ 	#FF012034��$ 1Q�.���� $	 370��$	 125��$��38��$	��221��$��24(�$��Bahnschrift)�$��Medium"�$) 1Q�$/ False��$	��34 ��$��Center=�$
��Left=�$��10,0,0,0q�
����������� " ��.���  � y�$ 	Collapsed=� �� 0 �� *Text+$
 wiek��1  .a���  � y�$ Visible=��� 
����� �$��	Waga [kg]��$	 105��$	 163��$��38��$	��240��$��24(�$��Bahnschrift)�$��Normal"�$	) 0.8Q�$��Center=�$	��Top=����� $ 0.5,1&�$ 0.5,0&�.��� $ 	#FFB79FC8��� $ 	#FF099FFF��$ 1Q�� $ 	#FF012034��$ 1Q��� -	   $
* waga��#��[ #+ [ 
����� �$	 370��$	 163��$��38��$	��312��$��24(�$��Bahnschrift)�$��Medium"�$	) 0.8Q�$
��Left=�$��Center=�.������ #2 [ $ Weight�$, PropertyChanged=�$
- True��.   .������ $ 0.5,1&�$ 0.5,0&�.��� $ 	#FFB79FC8��� $ 	#FF099FFF��$ 1Q�� $ 	#FF012034��$ 1Q�.���� $	 370��$	 168��$��38��$	��221��$��24(�$��Bahnschrift)�$��Medium"�$) 1Q�$/ False��$	��60 ��$��Center=�$
��Left=�$��10,0,0,0q�
����������� " ��.���  � y�$ 	Collapsed=� �� 0 �� *Text+$
 waga��1  .a���  � y�$ Visible=��� 
����� �$��Płeć��$	 105��$	 206��$��38��$	��240��$��24(�$��Bahnschrift)�$��Medium"�$	) 0.8Q�$��Center=�$	��Top=����� $ 0.5,1&�$ 0.5,0&�.��� $ 	#FFB79FC8��� $ 	#FF099FFF��$ 1Q�� $ 	#FF012034��$ 1Q�	� #+ [ 3 	� 	GroupName$3 CharacterGender��$��Mężczyzna��$	 369��$	 210��$��15��$��94��$
��Left=�$	��Top=�$��Normal"����	#FF00A7FF4 d� 	IsChecked4 �� $ Gender�#2 [     HealthHelper.Models.Gender5   Male6 �� ConverterParameter#6 Z5 7 � LayoutTransform7 �� 8 �� ScaleX$8 2Q�9 �� ScaleY$9 2Q�	� $3 CharacterGender��$��Kobieta��$	 562��$	 210��$��15��$��94��$
��Left=�$	��Top=�$��Normal"����	#FFAB00FF4 �� $ Gender�#2 [ :   Female#6 Z: 7 �� $8 2Q�$9 2Q��� -
   ; ��Name$; 
cmdAddUser��
���  ��$��Zapisz��$	 255��$	 287��$��45��$	��100��
����� �$��24(�$��Bahnschrift)�$��Medium"�$	) 0.6Q�$
��Left=�$	��Top=����� *
cmdAddUser+7 �� $8 2Q�$9 2Q�   $ 1Q�$ 0Q�$ Violet��$ 1Q�$ 4Q��� $	��420��$	��265��$ 5��$	 120��.+��� $ 10��$ 10��$��24(�$��Medium"�$��Wybierz użytkownika��
������$��35��$	��240��$
��Left=�$��Center=�   $ 5Q�$ 0Q�$ 
DarkViolet��$ 1Q�$ 8Q��� -   < ��Name$< listUser��= �� AlternationCount$= 2��#��[ $	��363��$	��240��$
��Left=�$	��Top=�$ 50��
����� �$	) 0.9Q�$ 9������ *
UserList+> �� SelectedItem> �� *SelectedUser+? �� View? �� .P��� -   
listColumn��@ �� Width$	@ 230��$��Nazwa Użytkownika��A �� DisplayMemberBindingA �� *
UserName+   $ 9Q�$ 0Q�$ DarkBlue��$	 0.7Q�$ 20Q�� -   B �Name$B gridNext��$ 30��$	 440��.+�� -   C �Name$C nextBtn��D �� Stretch$
D Fill=�
��� ���E � PointsgE �   ������ ������ ����ig�@����� ��������� -1 -1��������� ���    $ 3Q�$	 -50Q�$	 Red��$ 1Q�$ 5Q��� $��Dalej��$��50 5 10 10 q�$��24(�$��Medium"�$��30��$��70��$	) 0.9Q�
���  ��$
��Left=�$��Center=��� -   $
; Next��
������ $��0q�
������ $��45��$	��100��
����� �$��24(�$��Bahnschrift)�$��Medium"�$	) 0.1Q�$
��Left=�$	��Top=����� *cmdSelectUser+7 �� $8 2Q�$9 2Q����� " ��F �� BasedOn#F [B�� P�  � �� Z� . ���  � y�$ Hidden=�P�  � �� Z� . ���  � y�$ Hidden=�