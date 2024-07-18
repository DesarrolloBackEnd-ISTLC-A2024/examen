using Microsoft.AspNetCore.Mvc;

// For more information on enabling Web API for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

public class ConexionDB
{
    public static SqlConnection conexion;

    public static SqlConnection abrirConexion()
    {
        conexion = new SqlConnection("Server = DESKTOP-4MOA5G4\\SQLEXPRESS; Database = Furbol; Trusted_Connection = True;");
        conexion.Open();
        return conexion;
    }

    internal static void DeleteFutbolista(int id)
    {
        throw new NotImplementedException();
    }

    internal static void GetFutbolista(object id)
    {
        throw new NotImplementedException();
    }

    internal static string GetFutbolistasActivos()
    {
        throw new NotImplementedException();
    }

    internal static void PostFutbolista(Futbolista objfutbolista)
    {
        throw new NotImplementedException();
    }

    internal static void PutFutbolista(int id, Futbolista objfutbolista)
    {
        throw new NotImplementedException();
    }
}
