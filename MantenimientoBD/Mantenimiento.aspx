<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Mantenimiento.aspx.cs" Inherits="MantenimientoBD.Mantenimiento" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .nuevoEstilo1 {
            background-color: #000000;
            color: #FFFFFF;
            font-size: x-large;
            font-weight: 200;
            text-decoration: underline;
            text-align:center;
            font-family: KaiTi;
        }
        html{
            background-image:url('f.jpg');
            background-size:100% 990%;
        }
        .nuevoEstilo2 {
            font-weight: bold;
            background-color: #055383;
            color: #FFFFFF;
            font-family: KaiTi;
            font-size: medium;
            align-content:center;
            box-shadow: 0 8px 16px 0 rgba(149, 149, 149, 0.2), 0 6px 20px 0 rgba(206, 206, 206, 0.19);
            border-radius: 6px;
        }
        .nuevoEstilo3 {
            color: #FFFFFF;
            font-weight: bold;
            text-align: center;
           
        }
        .nuevoEstilo5 {
            text-align: center;
            color: #FFFFFF;
            font-weight: bold;
        }
        .auto-style1 {
            text-align: center;
            color: #FFFFFF;
            font-weight: bold;
            margin-left: 40px;
        }
        .nuevoEstilo6 {
            color: #CC0000;
        }
        .auto-style2 {
            text-align: center;
            color: #FFFFFF;
            font-weight: bold;
            margin-left: 80px;
        }
        .nuevoEstilo7 {
            color: #CC0000;
            text-align: center;
            font-weight: bold;
            list-style-type: circle;
        }
    </style>
</head>
<body style="height: 45px">
    <form id="form1" runat="server">
        <div class="nuevoEstilo1">
            MANTENIMIENTO DE CLIENTES</div>
        <p>
            &nbsp;</p>
        <p class="nuevoEstilo3">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Código:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtCodigo" runat="server" Width="280px"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtCodigo" CssClass="nuevoEstilo6" ErrorMessage="Debe ingresar código del cliente" Display="None"></asp:RequiredFieldValidator>
        </p>
        <p class="auto-style2">
            Nombres:&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtNombres" runat="server" Height="20px" Width="280px"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtNombres" CssClass="nuevoEstilo6" ErrorMessage="Debe ingresar el nombre del cliente" Display="None"></asp:RequiredFieldValidator>
            <br />
            </p>
        <p class="auto-style2">
            Dirección:&nbsp;&nbsp;&nbsp;&nbsp; 
            <asp:TextBox ID="txtDireccion" runat="server" Width="280px"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtDireccion" CssClass="nuevoEstilo6" ErrorMessage="Debe ingresar dirección del cliente" Display="None"></asp:RequiredFieldValidator>
            <br />
            </p>
        <p class="auto-style2">
            Teléfono:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtTelefono" runat="server" Width="280px"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtTelefono" CssClass="nuevoEstilo6" ErrorMessage="Debe ingresar teléfono del cliente" Display="None"></asp:RequiredFieldValidator>
            <br />
            </p>
        <p class="auto-style2">
            E-mail:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtMail" runat="server" Width="279px"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtMail" CssClass="nuevoEstilo6" ErrorMessage="El correo electónico ingresado no es válido" ValidationExpression="\S+@\S+\.\S+" Display="None"></asp:RegularExpressionValidator>
            <br />
            </p>
        <p class="auto-style1">
            Edad:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtEdad" runat="server" Width="280px"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;
            <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtEdad" CssClass="nuevoEstilo6" ErrorMessage="La edad ingresada debe estar en el rango de 18 a 100" MaximumValue="100" MinimumValue="18" Type="Integer" Display="None"></asp:RangeValidator>
            <br />
            <br />
            <br />
            </p>
        <p class="nuevoEstilo5">
            &nbsp;
            <asp:Button ID="btnGrabar" runat="server" OnClick="btnGrabar_Click" Text="Grabar" CssClass="nuevoEstilo2" />
            <br />
            <br />
            </p>
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" CssClass="nuevoEstilo7" />
        <p class="nuevoEstilo5">
            <asp:Label ID="lblResult" runat="server" Text="lblResult"></asp:Label>
        </p>

        <asp:Button ID="btnGrabar2" runat="server" DataSourceID="SqlDataSource1">
        </asp:Button>
         <asp:SqlDataSource ID="SqlDataSource1" runat="server"
        
            ConnectionString ="Data Source = DESKTOP-KPUTPNB;Initial Catalog=VENTAS; Integrated Security=True">
        </asp:SqlDataSource>
    </form>
</body>
</html>
