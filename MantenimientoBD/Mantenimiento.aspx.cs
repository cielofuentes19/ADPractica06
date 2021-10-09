using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace MantenimientoBD
{
    public partial class Mantenimiento : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnGrabar_Click(object sender, EventArgs e)
        {
            string connectionString = "Data Source = DESKTOP-KPUTPNB;" + "Initial Catalog = VENTAS; Integrated Security = True";
            if(!this.IsValid)return;
            string insertSQL = "INSERT INTO clientes (CódigoCliente,Nombre, Dirección,Teléfono,Correo_Electrónico,Edad) VALUES(" 
                + txtCodigo.Text +", '"+txtNombres.Text+"', '" + txtDireccion.Text + "', '" + 
                txtTelefono.Text +"', '" + txtMail.Text + "', " + txtEdad.Text + ")";
            SqlConnection con = new SqlConnection(connectionString);         
            SqlCommand cmd = new SqlCommand(insertSQL, con);
            try
            {
                con.Open();
                cmd.ExecuteNonQuery();
                lblResult.Text = "Cliente registrado con éxito";
                con.Close();
                txtCodigo.Text = "";
                txtNombres.Text = "";
                txtDireccion.Text = "";
                txtTelefono.Text = "";
                txtMail.Text = "";
                txtEdad.Text = "";
            }
            catch (Exception err)
            {
                lblResult.Text = "Error al registrar al cliente";
                lblResult.Text += err.Message;
            }
        }

  
    }
}