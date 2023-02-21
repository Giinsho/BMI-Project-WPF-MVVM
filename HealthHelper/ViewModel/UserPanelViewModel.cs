using System.ComponentModel;
using System.Runtime.CompilerServices;
using HealthHelper.Annotations;
using System.Collections.Generic;
using System.Windows.Input;
using HealthHelper.Models;
using HealthHelper.Services;
using Microsoft.VisualBasic;
using System;
using System.Windows.Controls;
using System.Windows;

namespace HealthHelper.ViewModel;

public class UserPanelViewModel : INotifyPropertyChanged, IDataErrorInfo
{
    public event PropertyChangedEventHandler? PropertyChanged;
    public UserModel SelectedUser { get; set; }




    [NotifyPropertyChangedInvocator]
    protected virtual void OnPropertyChanged([CallerMemberName] string? propertyName = null)
    {
        PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));
    }

    private string userName;
    private string wynikBMI;
    private string wynikBMR;

    
   
    public string WynikBMI
    {
        get { return BMI(); }
        set
        {
            wynikBMI = value;
            OnPropertyChanged("WynikBMI");
        }
    }

    public string WynikBMR
    {
        get { return BMR(); }
        set
        {
            wynikBMR = value ;
            OnPropertyChanged("WynikBMR");
        }
    }

    public string UserName
    {
        get { return userName; }
        set
        {
            userName = value;
            OnPropertyChanged("UserName");
        }
    }

    private double height;
    public double Height
    {
        get { return height; }
        set
        {
            height = value;
            OnPropertyChanged("Height");
        }
    }

    private int yearsOld;
    public int YearsOld
    {
        get { return yearsOld; }
        set
        {
            yearsOld = value;
            OnPropertyChanged("YearsOld");
        }
    }

    private double weight;
    public double Weight
    {
        get { return weight; }
        set
        {
            weight = value;
            OnPropertyChanged("Weight");
        }
    }

    private int id;
    public int ID
    {
        get { return id; }
        set
        {
            id = value;
            OnPropertyChanged();
        }
    }




    public Gender Gender { get; set; }
    
    public string BMR()
    {
        double wynik = 0.0;
        if (Gender.Female.ToString().Equals("Female"))
        {
            Console.WriteLine(Weight);
             wynik = 655 + 9.6 * Weight + 1.8 * Height - 4.7 * YearsOld;
            Console.WriteLine(wynik);
        } else if (Gender.Male.ToString().Equals("Male"))
        {
            wynik = 66 + (13.7 * Weight) + (5 * Height) - (6.8 * YearsOld);
        } else
        {
            wynik = 0.0;
        }
        wynik = Math.Round(wynik, 2);
        return wynik.ToString()+ " kcal";
    }

    public string BMI()
    {
        double mHeight = Height / 100;
        double pow = Math.Pow(mHeight,2);
        double wynikBMI = Weight/pow ;
        wynikBMI = Math.Round(wynikBMI, 2);
        return wynikBMI.ToString();
    }



    private List<UserModel> userList;
    public List<UserModel> UserList
    {
        get { return userList; }
        set
        {
            userList = value;
            OnPropertyChanged("UserList");

        }
    }
    public ICommand cmdEditUser { get; private set; }

    public ICommand cmdSelectUser { get; private set; }


    public bool CanExectute
    {
        get
        {
            return !(string.IsNullOrEmpty(UserName) && (Height > 40.00 || Height < 300.0) && (Weight > 20.0 || Weight < 200.0) && (YearsOld < 12.00 || YearsOld > 120.0)  );
        }
    }

    public bool CanGoFurther
    {
        get
        {
            return !UserModel.Equals(SelectedUser, null);

        }
    }
    public UserPanelViewModel()
    {
        cmdEditUser = new RelayCommand(EditUser, () => CanExectute);
        getUser();
    }
    public UserPanelViewModel(UserModel user)
    {
        ID = user.ID;
        Height = user.Height;
        Weight = user.Weight;
        YearsOld = user.YearsOld;
        Gender = user.Gender;
        UserName =  user.UserName;
        cmdEditUser = new RelayCommand(EditUser, () => CanExectute);
      
        getUser();
    }




    private async void EditUser()
    {
        var r = await App.UserDatabase.EditUserAsync(new UserModel
        {

            ID = ID,
            UserName = UserName,
            Height = Height,
            YearsOld = YearsOld,
            Weight = Weight,
            Gender = Gender,
        });
        getUser();

    }
    public async void getUser()
    {
        UserList = await App.UserDatabase.GetUserAsync();
    }



    public string Error
    {
        get
        {
            return null;
        }
    }

    public string this[string name]
    {
        get
        {
            string result = null;


            if (name == "UserName")
            {
                if (this.userName == "")
                {
                    result = "Your nick cannot be empty!";
                }
            }

            if (name == "Height")
            {

                if (this.height < 40.00 || this.height > 300.00)
                {
                    result = "To get accurate results later you should give real value of your height !";
                }

            }

            if (name == "Weight")
            {

                if (this.weight < 20.00 || this.weight > 200.00)
                {
                    result = "To get accurate results later you should give real value of your weight !";
                }


            }

            if (name == "YearsOld")
            {

                if (this.yearsOld < 12 || this.yearsOld > 120)
                {
                    result = "The results are not intended for adolescents or those in the growth phase !";
                }

            }

            return result;
        }
    }





}