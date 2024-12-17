<%@ Page Title="" Language="C#" MasterPageFile="~/CapaVistas/Plantilla.Master" AutoEventWireup="true" CodeBehind="Salir.aspx.cs" Inherits="ExamenFinal_AaronRuiz.CapaVistas.Salir" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="css/SalirCSS.css" rel="stylesheet" />
    <div>
        <h2>¿Estás seguro de que deseas salir?</h2>
        <asp:Button ID="btnSalir" runat="server" Text="Salir" OnClick="btnSalir_Click" CssClass="form-button" />
    </div>
</asp:Content>