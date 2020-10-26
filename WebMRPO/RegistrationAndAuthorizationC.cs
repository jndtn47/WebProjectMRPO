using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;

namespace WebMRPO
{
    public class RegistrationAndAuthorizationC
    {
        public string csConnection = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\WebMRPO\\WebMRPO\\App_Data\\ListUsers.mdf;Integrated Security=True";
        public string getName = "";
        public bool isSuccess = false;
        //Регистрация нового пользователя
        public string Registration(string name, string login, string password)
        {
            string sqlExpression = "InsertingNaeUser";
            try
            {
                using (SqlConnection connection = new SqlConnection(csConnection))
                {
                    connection.Open();
                    SqlCommand command = new SqlCommand(sqlExpression, connection);
                    command.CommandType = System.Data.CommandType.StoredProcedure;
                    SqlParameter ParamName = new SqlParameter
                    {
                       ParameterName = "@name",
                        Value = name
                    };
                    command.Parameters.Add(ParamName);
                    SqlParameter ParamLogin = new SqlParameter
                    {
                        ParameterName = "@login",
                        Value = login
                    };
                    command.Parameters.Add(ParamLogin);
                    SqlParameter ParamPassword = new SqlParameter
                    {
                        ParameterName = "@password",
                        Value = password
                    };
                    command.Parameters.Add(ParamPassword);
                    command.ExecuteNonQuery();
                }
                isSuccess = true;
                return "Регистрация прошла успешно";
            }
            catch (Exception ex)
            {
                return "Пользователь с таким логином уже существует";
            }
        }
        //Авторизация
        public bool Authorization(string login, string password)
        {
            string sqlExpression = "SearchUser";
            try
            {
                using (SqlConnection connection = new SqlConnection(csConnection))
                {
                    connection.Open();
                    SqlCommand command = new SqlCommand(sqlExpression, connection);
                    command.CommandType = System.Data.CommandType.StoredProcedure;
                    SqlParameter ParamLogin = new SqlParameter
                    {
                        ParameterName = "@login",
                        Value = login
                    };
                    command.Parameters.Add(ParamLogin);
                    SqlParameter ParamPassword = new SqlParameter
                    {
                        ParameterName = "@password",
                        Value = password
                    };
                    command.Parameters.Add(ParamPassword);
                    SqlParameter ParamName = new SqlParameter
                    {
                        ParameterName = "@name",
                        Size = 50,
                        SqlDbType = SqlDbType.NVarChar
                    };
                    ParamName.Direction = ParameterDirection.Output;
                    command.Parameters.Add(ParamName);
                    command.ExecuteNonQuery();
                    getName = command.Parameters["@name"].Value.ToString();
                }
                if (String.IsNullOrWhiteSpace(getName))
                    return false;
                else
                    return true;
            }
            catch (Exception ex) { return false; }
        }
    }
}