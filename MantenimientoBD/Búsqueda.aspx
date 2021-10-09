<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Búsqueda.aspx.cs" Inherits="MantenimientoBD.Búsqueda" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .nuevoEstilo2 {
            background-color: #000000;
            color: #FFFFFF;
            font-size: x-large;
            font-weight: 200;
            text-decoration: underline;
            text-align:center;
            font-family: KaiTi;
        }
        html{
            background-image:url('r.jpg');
            background-size:100% 200%;
        }

        .nuevoEstilo3 {
        }

        .nuevoEstilo4 {
            color: #FFFFFF;
            font-weight: bold;
            text-align: center;
        }
        .nuevoEstilo5 {
            color: #FFFFFF;
            font-weight: bold;
            margin-right:100px;
        }

        .nuevoEstilo6 {
            font-family: KaiTi;
            font-weight: bold;
            color: #FFFFFF;
            background-color: #930503;
            font-size: medium;
            box-shadow: 0 8px 16px 0 rgba(149, 149, 149, 0.2), 0 6px 20px 0 rgba(206, 206, 206, 0.19);
            border-radius: 6px;
        }
        .nuevoEstilo7 {
            font-weight: bold;
            background-color: #930503;
            color: #FFFFFF;
            font-family: KaiTi;
            font-size: medium;
            align-content:center;
            box-shadow: 0 8px 16px 0 rgba(149, 149, 149, 0.2), 0 6px 20px 0 rgba(206, 206, 206, 0.19);
            border-radius: 6px;
        }



        .nuevoEstilo8 {
            font-size: medium;
            color: #FFFFFF;
            font-weight: bold;
            text-align: center;
        }



        .auto-style1 {
            text-align: center;
        }



    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="nuevoEstilo2">
            BUSQUEDA DE CLIENTES</div>
        <p>
            &nbsp;</p>
        <p class="nuevoEstilo4">
            Código:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtCodigo" runat="server" Width="211px" OnTextChanged="txtCodigo_TextChanged"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnBuscar" runat="server" Text="BUSCAR" CssClass="nuevoEstilo6" OnClick="btnBuscar_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnLimpiar" runat="server" Text="LIMPIAR" CssClass="nuevoEstilo6" OnClick="btnLimpiar_Click" />
        </p>
        <p class="nuevoEstilo5">
            Nombre:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="txtNombres" runat="server" ReadOnly="True" Width="211px" OnTextChanged="txtNombres_TextChanged"></asp:TextBox>
        </p>
        <p class="nuevoEstilo5">
            Dirección:&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="txtDireccion" runat="server" ReadOnly="True" Width="211px"></asp:TextBox>
        </p>
        <p class="nuevoEstilo5">
            Teléfono:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtTelefono" runat="server" ReadOnly="True" Width="211px"></asp:TextBox>
        </p>
        <p class="nuevoEstilo5">
            E-mail:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtMail" runat="server" ReadOnly="True" Width="211px"></asp:TextBox>
        </p>
        <p class="nuevoEstilo5">
            Edad:&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtEdad" runat="server" ReadOnly="True" Width="221px"></asp:TextBox>
        </p>
        <p class="auto-style1">
            <asp:Button ID="btnMostrar" runat="server" Text="Mostrar todos los Clientes" CssClass="nuevoEstilo7" Width="477px" OnClick="btnMostrar_Click"></asp:Button>
        </p>
         <div class="auto-style1">
         <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" GridLines="Horizontal">
                <FooterStyle BackColor="White" ForeColor="#333333" />
                <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="White" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F7F7F7" />
                <SortedAscendingHeaderStyle BackColor="#487575" />
                <SortedDescendingCellStyle BackColor="#E5E5E5" />
                <SortedDescendingHeaderStyle BackColor="#275353" />
            </asp:GridView>
        </div>
        <br />
        <br />
        <p class="nuevoEstilo8">
            <asp:Label ID="lblResult" runat="server" Text="lblResult" CssClass="nuevoEstilo8"></asp:Label>
        </p>

       
        <asp:GridView ID="GridView2" runat="server" DataSourceID="SqlDataSource1">
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server"
            
            ConnectionString ="Data Source = DESKTOP-KPUTPNB;Initial Catalog=VENTAS; Integrated Security=True">
        </asp:SqlDataSource>
        <asp:Button ID="btnBuscar2" runat="server" DataSourceID="SqlDataSource1">
        </asp:Button>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server"
            
            ConnectionString ="Data Source = DESKTOP-KPUTPNB;Initial Catalog=VENTAS; Integrated Security=True">
        </asp:SqlDataSource>
    </form>
</body>
</html>
