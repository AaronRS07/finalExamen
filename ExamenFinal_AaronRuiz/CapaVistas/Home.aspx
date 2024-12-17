<%@ Page Title="" Language="C#" MasterPageFile="~/CapaVistas/Plantilla.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="ExamenFinal_AaronRuiz.CapaVistas.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="css/HomeCSS.css" rel="stylesheet" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <header>
        <h1>Bienvenidos al Mundo de la Música</h1>
    </header>

    <div class="container">
        <div class="welcome-section">
            <h2>¡Descubre a tus Cantantes Favoritos!</h2>
            <p>Bienvenidos a nuestro espacio dedicado a la música, donde celebramos a los artistas y sus canciones. Aquí podrás conocer las historias de tus cantantes favoritos, explorar sus discografías y descubrir las últimas novedades del mundo musical.</p>
            <a href="#contacto" class="cta-button">Explora Más</a>
        </div>
    </div>

    <div class="footer">
        <p>&copy; 2024 Mundo de la Música | Todos los derechos reservados</p>
    </div>
</asp:Content>
