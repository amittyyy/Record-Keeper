<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div id="login">
        <h1><strong>Welcome.</strong> Please login.</h1>
        <form id="FormLogin" runat="server">
            <fieldset>
                <p>
                    <asp:TextBox ID="txtuserName" AutoCompleteType="Email" runat="server"></asp:TextBox></p>
                <p> <asp:TextBox ID="txtPassword" type="password" runat="server"></asp:TextBox></p>
                <p><a href="#" style="color: #0026ff"><strong>Forget Password?</strong></a>
                    <a href="Register.aspx" style="color: #0026ff"><strong>Register User?</strong></a>
                </p>
                <p><asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" /></p>
                <p style="color:red"><asp:Label ID="lblError" runat="server" Text=""></asp:Label></p>
            </fieldset>
        </form>
        
    </div>
    <!-- end login -->
</asp:Content>

