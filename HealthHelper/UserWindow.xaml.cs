using System;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using HealthHelper.Models;
using HealthHelper.ViewModel;
using static HealthHelper.MainWindow;
using System.Media;
namespace HealthHelper;

public partial class UserWindow : Window
{
    private UserModel user { get; set; }
    SoundPlayer click = new SoundPlayer(@"F:\SPAWiM\Projekt_LG\HealthHelper\HealthHelper\Sounds\click.wav");
    SoundPlayer menu = new SoundPlayer(@"F:\SPAWiM\Projekt_LG\HealthHelper\HealthHelper\Sounds\menu.wav");
    SoundPlayer success = new SoundPlayer(@"F:\SPAWiM\Projekt_LG\HealthHelper\HealthHelper\Sounds\success.wav");
    public UserWindow(UserModel user)
    {
        InitializeComponent();
        this.DataContext = new ViewModel.UserPanelViewModel(user);
        ImageBrush ib = new ImageBrush();
        ib.ImageSource = new BitmapImage(new Uri(@"../img/background.jpg", UriKind.Relative));
        overallCanvas.Background = ib;

      

       

    }
    
    
    
    private void Button_OnClick(object sender, RoutedEventArgs e)
    {
        click.Play();
        MainWindow mnw = new MainWindow();
        mnw.Owner = this.Owner; // may not be necessary
        mnw.Show();
        this.Close();

    }

    private void Button_Click(object sender, RoutedEventArgs e)
    {
        success.Play();
        MessageBoxImage icon = MessageBoxImage.Information;
        MessageBoxResult result = MessageBox.Show("Pomyślnie zapisano zmiany!", "Confirmation", MessageBoxButton.OK, icon);
        if (result == MessageBoxResult.OK)
        {
            menu.Play();
            return;
        }
        
    }

    private void Button_OnClick_BmiOpis(object sender, RoutedEventArgs e)
    {
        click.Play();
        BmiView bmiView = new BmiView();
        bmiView.ShowDialog();

    }

    private void Button_OnClick_BmrOpis(object sender, RoutedEventArgs e)
    {
        click.Play();
        BmrView bmrView = new BmrView();
        bmrView.ShowDialog();

    }
}