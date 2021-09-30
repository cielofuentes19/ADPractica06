using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;


namespace WebApplication5
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string connectionString = "Data Source = DESKTOP-DR98HUG;" +  "Initial Catalog = VENTAS; Integrated Security = True";
            string selectSQL = "SELECT * FROM CLIENTES";
            SqlConnection conexion = new SqlConnection(connectionString);
            SqlCommand comando = new SqlCommand(selectSQL, conexion);
            SqlDataAdapter adapter = new SqlDataAdapter(comando);
            // llenando el dataset
            DataSet Ventas = new DataSet();
            adapter.Fill(Ventas, "CLIENTES");
            // enlazar el gridview
            GridView1.DataSource = Ventas;
            GridView1.DataBind();
        }
    }
}