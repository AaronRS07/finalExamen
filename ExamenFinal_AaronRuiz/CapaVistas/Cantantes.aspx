<%@ Page Title="" Language="C#" MasterPageFile="~/CapaVistas/Plantilla.Master" AutoEventWireup="true" CodeBehind="Cantantes.aspx.cs" Inherits="ExamenFinal_AaronRuiz.CapaVistas.Cantantes" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="css/CantantesCSS.css" rel="stylesheet" />
    <div class="container">
        <h1><i class="fas fa-music"></i> Cantantes Catálogo</h1>
        
        <div class="grid-container">
            <asp:GridView ID="GridView1" runat="server" CssClass="grid-table"></asp:GridView>
        </div>
        
        <div class="form-group">
            <asp:Label ID="Label1" runat="server" Text="Código de Canción" CssClass="form-label"></asp:Label>
            <asp:TextBox ID="tcodigo" runat="server" CssClass="form-input"></asp:TextBox>
        </div>

        <div class="form-group">
            <asp:Label ID="Label2" runat="server" Text="Nombre de Canción" CssClass="form-label"></asp:Label>
            <asp:TextBox ID="tnombre" runat="server" CssClass="form-input"></asp:TextBox>
        </div>

        <div class="button-container">
            <asp:Button ID="bconsultar" runat="server" Text="Consultar" OnClick="bconsultar_Click" CssClass="form-button" />
            <asp:Button ID="baagregar" runat="server" Text="Agregar" OnClick="baagregar_Click" CssClass="form-button" />
        </div>

        <div class="music-icon">
            <i class="fas fa-headphones-alt"></i>
        </div>
    </div>
</asp:Content>