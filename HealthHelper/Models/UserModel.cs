using SQLite;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HealthHelper.Models;
[Table("Użytkownicy")]
public class UserModel 
{
   
    [PrimaryKey, AutoIncrement]
    public int ID { get; set; }

    public string UserName { get; set; }

    public double Height { get; set; }

    public int YearsOld { get; set; }

    public double Weight { get; set; }
    public Gender Gender { get; set; }

 

}