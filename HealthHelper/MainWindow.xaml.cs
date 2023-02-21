using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using static HealthHelper.UserWindow;
using static HealthHelper.ViewModel.UserViewModel;
using System.Diagnostics;
using HealthHelper.Models;
using HealthHelper.ViewModel;
using System.Media;

namespace HealthHelper

{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
  
    public partial class MainWindow : Window
    {
        private UserModel user { get; set; }
        private ListView item { get; set; }
        UserViewModel vw ;
        SoundPlayer click = new SoundPlayer(@"F:\SPAWiM\Projekt_LG\HealthHelper\HealthHelper\Sounds\click.wav");
        SoundPlayer menu = new SoundPlayer(@"F:\SPAWiM\Projekt_LG\HealthHelper\HealthHelper\Sounds\menu.wav");
        SoundPlayer success = new SoundPlayer(@"F:\SPAWiM\Projekt_LG\HealthHelper\HealthHelper\Sounds\success.wav");
        public MainWindow()
        {
            InitializeComponent();
            

            vw = this.DataContext as UserViewModel;
            ImageBrush ib = new ImageBrush();
            ib.ImageSource = new BitmapImage(new Uri(@"../img/background.jpg", UriKind.Relative));
            mainCanvas.Background = ib;
            gridNext.Visibility = Visibility.Hidden;
        /*    nazwa.Text = "Użytkownik";
            wzrost.Text = "160";
            wiek.Text = "34";
            waga.Text = "80";*/
        }
        

      
        

        private void Button_OnClick(object sender, RoutedEventArgs e)
        {

            click.Play();
            UserWindow mnw = new UserWindow(user);
            mnw.Owner = this.Owner; // may not be necessary
            mnw.Show();
       
            this.Close();
        }

        private void Button_AddClick(object sender, RoutedEventArgs e)
        {
            success.Play();
        }

        private void ListView_MouseDoubleClick(object sender, RoutedEventArgs e)
        {
            MessageBoxImage icon = MessageBoxImage.Asterisk;
            MessageBoxResult result = MessageBox.Show("Napewno chcesz usunąć ten rekord z listy?", "Confirmation", MessageBoxButton.YesNo, icon );
            if (result == MessageBoxResult.Yes)
            {
                vw.cmdDeleteUser.Execute(user);
               // vw.DelUser(); 
            }
            else if(result == MessageBoxResult.No)
{
                return;
            }
            

        }

        private void ListView_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {


            
         
            gridNext.Visibility = Visibility.Visible;
            item = (ListView)sender;
            user = (UserModel)item.SelectedItem;

            menu.Play();
            
            

            // MessageBox.Show("You Selected - ID: " + user.ID+ ", name of a user : " + user.UserName);
        }

        
    }
}
