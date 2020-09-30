<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="E_Library.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 512px;
            height: 512px;
        }
        p{
            justify-content:center;
            text-align:center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <p>
             
            <asp:Label ID="Label1" runat="server" Text="Welcome! to the E-Library" BackColor="#FFFF66" Font-Size="XX-Large" Font-Underline="True" ForeColor="#0066FF"></asp:Label><br />

             
            <img alt="E-Library Image" class="auto-style1" src="Images/library.png" style="background-color: #FFFFFF" /></p>
</asp:Content>
