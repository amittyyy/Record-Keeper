<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.master" AutoEventWireup="true" CodeFile="MainPage.aspx.cs" Inherits="MainPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <form id="form1" runat="server">
        <div id="Mainpage">
            <fieldset>
                <asp:Image ID="HomeImage" ImageUrl="~/Images/2.jpg" runat="server" Width="301px" />
                <asp:Button ID="btnRecList" runat="server" Text="Record  Details" OnClick="btnRecList_Click" />
                <asp:Button ID="btnGenerateRec" runat="server" Text="Generate  Record" />

            </fieldset>
        </div>

    </form>


</asp:Content>
