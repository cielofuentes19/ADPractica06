using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace basesdedatos
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string connectionString = "Data Source = LAPTOP-TS55LRG1;" +
            "Initial Catalog = VENTAS; Integrated Security = True";
            string selectSQL = "SELECT * FROM Productos";
            SqlConnection conexion = new SqlConnection(connectionString);
            SqlCommand comando = new SqlCommand(selectSQL, conexion);
            SqlDataAdapter adapter = new SqlDataAdapter(comando);
            
            DataSet ventas = new DataSet();
            adapter.Fill(ventas, "productos");
            
            GridViewProd.DataSource = ventas;
            GridViewProd.DataBind();
        }
    }
}
