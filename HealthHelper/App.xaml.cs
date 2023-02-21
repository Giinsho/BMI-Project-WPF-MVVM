using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.IO;
using System.Linq;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Media;
using HealthHelper.Services;

namespace HealthHelper
{
    /// <summary> 
    /// Interaction logic for App.xaml
    /// </summary>
    public partial class App : Application
    {
        static UserDatabaseService userDatabase;
        
      
        public static UserDatabaseService UserDatabase
        {
            get
            {
                if (userDatabase == null)
                {
                    string workingDirectory = Path.GetFullPath(Path.Combine(AppDomain.CurrentDomain.BaseDirectory, @"..\..\..\"));
                    userDatabase = new UserDatabaseService(workingDirectory+"UserHealthApp.db");
                }
                return userDatabase;
            }
        }
    }
}
