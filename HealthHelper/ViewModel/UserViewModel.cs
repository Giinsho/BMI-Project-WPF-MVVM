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

public class UserViewModel: INotifyPropertyChanged, IDataErrorInfo
{
    public event PropertyChangedEventHandler? PropertyChanged;
    public UserModel SelectedUser { get; set; }

    [NotifyPropertyChangedInvocator]
    protected virtual void OnPropertyChanged([CallerMemberName] string? propertyName = null)
    {
        PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));
    }
   
    private string userName;

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

  



    public Gender Gender { get; set; }
   

    
    
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
    public ICommand cmdAddUser { get; private set; }
    
    public ICommand cmdSelectUser { get; private set; }
    public ICommand cmdDeleteUser { get; private set; }

    public bool CanExectute
    {
        get
        {
            return !string.IsNullOrEmpty(UserName);
        }
    }

    public bool CanGoFurther
    {
        get
        {
            return !UserModel.Equals(SelectedUser,null);
            
        }
    }
    public UserViewModel()
    {
        cmdAddUser = new RelayCommand(AddUser, () => CanExectute);
        cmdSelectUser = new RelayCommand(CheckTask, () => CanGoFurther);
        cmdDeleteUser = new RelayCommand(DelUser, () => CanGoFurther);
        getUser();
    }
    
    private async void CheckTask()
    {
        
    }

    public async void DelUser()
    {
            await App.UserDatabase.DeleteUserAsync(SelectedUser);
           getUser();

    }
    
    private async void AddUser()
    {
        var r = await App.UserDatabase.SaveUserAsync(new UserModel
        {
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