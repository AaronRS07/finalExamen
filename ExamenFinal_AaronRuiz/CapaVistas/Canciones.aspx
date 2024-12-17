<%@ Page Title="" Language="C#" MasterPageFile="~/CapaVistas/Plantilla.Master" AutoEventWireup="true" CodeBehind="Canciones.aspx.cs" Inherits="ExamenFinal_AaronRuiz.CapaVistas.Canciones" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="css/CancionesCSS.css" rel="stylesheet" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <header class="music-header">
        <h1>Canciones Catalogo</h1>
    </header>

    <div class="container">
        <div class="grid-section">
            <h2>Lista de Canciones</h2>
            <asp:GridView ID="GridViewEscuela" runat="server" CssClass="styled-grid"></asp:GridView>
        </div>

        <div class="form-section">
            <h2>Gestión de Canciones</h2>
            <div class="form-group">
                <label for="txtCodigoCancion">Cancion:</label>
                <asp:TextBox ID="txtCodigoCancion" runat="server" CssClass="styled-input"></asp:TextBox>
            </div>

            <div class="form-group">
                <label for="txtNombreCantante">Nombre:</label>
                <asp:TextBox ID="txtNombreCantante" runat="server" CssClass="styled-input"></asp:TextBox>
            </div>

            <div class="button-group">
                <asp:Button ID="btnConsultarCancion" runat="server" Text="Consultar" CssClass="styled-button" OnClick="btnConsultarCancion_Click" />
                <asp:Button ID="btnAgregarCancion" runat="server" Text="Agregar" CssClass="styled-button" OnClick="btnAgregarCancion_Click" />
            </div>
        </div>
    </div>

    <footer class="music-footer">
        <p>&copy; 2024 Canciones Catalog | Todos los derechos reservados</p>
    </footer>
</asp:Content>
