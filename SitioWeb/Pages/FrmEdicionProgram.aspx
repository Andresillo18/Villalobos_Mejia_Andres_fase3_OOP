﻿<%@ Page Title="Mantenimiento de Programas" Language="C#" MasterPageFile="~/plantilla.Master" AutoEventWireup="true" CodeBehind="FrmEdicionProgram.aspx.cs" Inherits="SitioWeb.Pages.FrmEdicionProgram" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="main" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-4">
                <asp:Label class="texto" ID="lblCodPrograma" runat="server" Text="COD: "></asp:Label>
                <asp:TextBox  ID="txtCodPrograma" runat="server" ReadOnly="True"></asp:TextBox>
            </div>
            <div class="col-4">
                <asp:Label class="texto" ID="lblNombre" runat="server" Text="Nombre: "></asp:Label>
                <asp:TextBox ID="txtNombre" runat="server"></asp:TextBox>
            </div>
            <div class="col-4">
                <asp:Label class="texto" ID="lblDescripcion"  runat="server" Text="Descripción: "></asp:Label>
                <asp:TextBox ID="txtDescripcion" class="textBoxBig" runat="server"></asp:TextBox>
            </div>

            <div class="row">
                <div class="col-4">
                    <asp:Label class="texto Estado" ID="lblEstado" runat="server" Text="Estado: "></asp:Label>
                    <asp:RadioButton ID="RBActivo" class="texto" runat="server" GroupName="Estado" Text="Activo" />
                    <asp:RadioButton ID="RBInactivo" class="texto" runat="server" GroupName="Estado" Text="Inactivo" />
                </div>
                <div class="col-4">
                    <asp:Label class="texto" ID="lblObservaciones" runat="server" Text="Observaciones: "></asp:Label>
                    <asp:TextBox ID="txtObservaciones" class="textBoxBig" runat="server"></asp:TextBox>
                </div>
            </div>

             <div class="row">
                <div class="col-4">
                    <asp:Button ID="btnGuardar" runat="server" Text="Guardar" OnClick="btnGuardar_Click" />
                    <asp:Button ID="btnCancelar"  runat="server" Text="Cancelar" OnClick="btnCancelar_Click" />
                </div>                
            </div>
        </div>
    </div>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="footer" runat="server">
</asp:Content>
