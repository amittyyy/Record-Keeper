<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.master" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
  
    <%--   <script>
        function validation()
        {
            var message = document.getElementById('<%=txtName.ClientID %>').value;
            alert(message);
        }
    </script>--%>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div id="Register">
        <h1><strong>Welcome.</strong> Please Register.</h1>
        <form id="FormLogin" runat="server">
            <fieldset>
                <table id="tblRegister">
                    <tr>
                        <td>Full Name</td>
                        <td>
                            <asp:TextBox ID="txtName" runat="server" TabIndex="1"></asp:TextBox></td>
                        <td>&nbsp;</td>
                        <td>Phone</td>
                        <td class="auto-style1">
                            <asp:TextBox ID="txtPhone" runat="server" TabIndex="2"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td>Email (UserName)</td>
                        <td>
                            <asp:TextBox ID="txtEmail" AutoCompleteType="Email" runat="server" TabIndex="3" OnTextChanged="txtEmail_TextChanged"></asp:TextBox></td>
                        <td>&nbsp;</td>
                        <td>Address</td>
                        <td class="auto-style1">
                            <asp:TextBox ID="txtAddress" runat="server" TabIndex="4"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td>Password</td>
                        <td>
                            <asp:TextBox ID="txtPassword" type="password" runat="server" TabIndex="5"></asp:TextBox></td>
                        <td>&nbsp;</td>
                        <td>Costomer Type</td>
                        <td class="auto-style1">
                            <asp:ListBox ID="lstCustomerType" runat="server" TabIndex="7" DataSourceID="SqlDataSource3" DataTextField="RecordType" DataValueField="RId" Width="165px"></asp:ListBox>
                            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:Dbcon %>" SelectCommand="SELECT [RId], [RecordType] FROM [RecordType]"></asp:SqlDataSource>
                        </td>
                    </tr>
                    <tr>
                        <td>Confirm password</td>
                        <td>
                            <asp:TextBox ID="txtConfirmPassword" type="password" runat="server" TabIndex="6"></asp:TextBox></td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>
                            <asp:Button ID="btnRegister" runat="server" Text="Register" OnClientClick="return validation();" OnClick="btnLogin_Click"/>
                        </td>
                        <td>&nbsp;</td>
                        <td style="color: red" colspan="2">
                            <asp:Label ID="lblError" runat="server" Text=""></asp:Label></td>
                    </tr>
                </table>

            </fieldset>
        </form>

    </div>
</asp:Content>

