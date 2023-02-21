using HealthHelper.Models;

namespace HealthHelper.Services;
using System.Collections.Generic;
using System.Threading.Tasks;
using SQLite;
using System;
public class UserDatabaseService
{
    readonly SQLite.SQLiteAsyncConnection _database;


    public UserDatabaseService(string dbPath)
    {
        _database = new SQLiteAsyncConnection(dbPath);
        _database.CreateTableAsync<UserModel>().Wait();
    }

    public Task<List<UserModel>> GetUserAsync()
    {
        
        return _database.Table<UserModel>().OrderByDescending(x => x.ID).ToListAsync();
    }

    public Task<int> SaveUserAsync(UserModel userModel)
    {
        return _database.InsertAsync(userModel);

    }

    public Task<int> EditUserAsync(UserModel userModel)
    {
     
        return _database.UpdateAsync(userModel);

    }

    public Task<int> DeleteUserAsync(UserModel userModel)
    {
     
        return _database.DeleteAsync(userModel);

    }
}