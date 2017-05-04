<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.master" AutoEventWireup="true" CodeFile="Recorddetails_List.aspx.cs" Inherits="Recorddetails_List" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
        <div>       
    <fieldset style="width:470px">
    <legend>3 tier example to insert and bind book details</legend>
    <table>
        <tr><td>Book Name * : </td><td>
            <asp:TextBox ID="txtBookName" runat="server"></asp:TextBox><br />
            <asp:RequiredFieldValidator ID="rfvBookName" runat="server"
                ErrorMessage="Book Name can't be left blank" ControlToValidate="txtBookName"
                Display="Dynamic" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
        </td></tr>
        <tr><td>Author * : </td><td>
        <asp:TextBox ID="txtAuthor" runat="server"></asp:TextBox><br />
        <asp:RequiredFieldValidator ID="rfvAuthor" runat="server"
                ErrorMessage="Author Name can't be left blank" ControlToValidate="txtAuthor"
                Display="Dynamic" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
        </td></tr>
        <tr><td>Publisher * : </td><td>
        <asp:TextBox ID="txtPublisher" runat="server"></asp:TextBox><br />
        <asp:RequiredFieldValidator ID="rfvPublisher" runat="server"
                ErrorMessage="Publisher Name can't be left blank" ControlToValidate="txtPublisher"
                Display="Dynamic" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
        </td></tr>
        <tr><td>Price * : </td><td>
        <asp:TextBox ID="txtPrice" runat="server"></asp:TextBox><br />
        <asp:RequiredFieldValidator ID="rfvPrice" runat="server"
                ErrorMessage="Price can't be left blank" ControlToValidate="txtPrice"
                Display="Dynamic" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="rgePrice" runat="server"
                ControlToValidate="txtPrice" Display="Dynamic"
                ErrorMessage="Enter Numeric only" ForeColor="Red" SetFocusOnError="True"
                ValidationExpression="^\d*[0-9](|.\d*[0-9]|)*$"></asp:RegularExpressionValidator>
        </td></tr>
        <tr><td></td><td>
            <asp:Button ID="btnSubmit" runat="server" Text="Submit"
                onclick="btnSubmit_Click" /></td></tr>
                <tr><td colspan="2"><asp:Label ID="lblStatus" runat="server" Text=""></asp:Label></td></tr>
    </table>   
        <br />   
    <asp:GridView ID="grdBookDetails" runat="server" DataKeyNames="BookId"
        AutoGenerateColumns="False"
        onpageindexchanging="grdBookDetails_PageIndexChanging"
        onrowcancelingedit="grdBookDetails_RowCancelingEdit"
        onrowdeleting="grdBookDetails_RowDeleting"
        onrowediting="grdBookDetails_RowEditing"
        onrowupdating="grdBookDetails_RowUpdating" AllowPaging="True" PageSize="5"
        CellPadding="4" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="grdBookDetails_SelectedIndexChanged">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
    <Columns>
    <asp:TemplateField HeaderText="Record Id">
    <ItemTemplate>
        <asp:Label ID="lblRecid" runat="server" Text='<%#Eval("Recid")%>'></asp:Label>
    </ItemTemplate>
    <EditItemTemplate>
        <asp:TextBox ID="txtBookNameEdit" runat="server" Text='<%#Eval("BookName")%>'></asp:TextBox></EditItemTemplate>
    </asp:TemplateField>
    <asp:TemplateField HeaderText="RecordType">
    <ItemTemplate>
        <asp:Label ID="lblRecordType" runat="server" Text='<%#Eval("RecordType")%>'></asp:Label>
    </ItemTemplate>
    <EditItemTemplate>
        <asp:TextBox ID="lblRecordTypeEdit" runat="server" Text='<%#Eval("lblRecordType")%>'></asp:TextBox>
    </EditItemTemplate>
    </asp:TemplateField>
    <asp:TemplateField HeaderText="R-Name">
    <ItemTemplate>
        <asp:Label ID="lblNamw" runat="server" Text='<%#Eval("RName")%>'></asp:Label>
    </ItemTemplate>
    <EditItemTemplate>
        <asp:TextBox ID="txtRNameEdit" runat="server" Text='<%#Eval("RName")%>'></asp:TextBox>
     </EditItemTemplate>
    </asp:TemplateField>
    <asp:TemplateField HeaderText="Description">
    <ItemTemplate>
        <asp:Label ID="lblRDescription" runat="server" Text='<%#Eval("RDescription")%>'></asp:Label>
    </ItemTemplate>
    <EditItemTemplate>
        <asp:TextBox ID="txtRDescriptionEdit" runat="server" Text='<%#Eval("RDescription")%>'></asp:TextBox>
    </EditItemTemplate>
    </asp:TemplateField>
         <asp:TemplateField HeaderText="Date">
    <ItemTemplate>
        <asp:Label ID="lblRDate" runat="server" Text='<%#Eval("RDate")%>'></asp:Label>
    </ItemTemplate>
    <EditItemTemplate>
        <asp:TextBox ID="txtRDateEdit" runat="server" Text='<%#Eval("RDate")%>'></asp:TextBox>
    </EditItemTemplate>
    </asp:TemplateField>
         <asp:TemplateField HeaderText="Credit">
    <ItemTemplate>
        <asp:Label ID="lblRCredit" runat="server" Text='<%#Eval("RCredit")%>'></asp:Label>
    </ItemTemplate>
    <EditItemTemplate>
        <asp:TextBox ID="txtRCreditEdit" runat="server" Text='<%#Eval("RCredit")%>'></asp:TextBox>
    </EditItemTemplate>
    </asp:TemplateField>
         <asp:TemplateField HeaderText="Debut">
    <ItemTemplate>
        <asp:Label ID="lblRDebut" runat="server" Text='<%#Eval("RDebut")%>'></asp:Label>
    </ItemTemplate>
    <EditItemTemplate>
        <asp:TextBox ID="txtRDebutEdit" runat="server" Text='<%#Eval("RDebut")%>'></asp:TextBox>
    </EditItemTemplate>
    </asp:TemplateField>
         <asp:TemplateField HeaderText="Amount">
    <ItemTemplate>
        <asp:Label ID="lblRAmount" runat="server" Text='<%#Eval("RAmount")%>'></asp:Label>
    </ItemTemplate>
    <EditItemTemplate>
        <asp:TextBox ID="txtRAmountEdit" runat="server" Text='<%#Eval("RAmount")%>'></asp:TextBox>
    </EditItemTemplate>
    </asp:TemplateField>
          <asp:TemplateField HeaderText="Taken_Date">
    <ItemTemplate>
        <asp:Label ID="lblRTakeDate" runat="server" Text='<%#Eval("RTakeDate")%>'></asp:Label>
    </ItemTemplate>
    <EditItemTemplate>
        <asp:TextBox ID="txtRTakeDateEdit" runat="server" Text='<%#Eval("RTakeDate")%>'></asp:TextBox>
    </EditItemTemplate>
    </asp:TemplateField>
         
    <asp:TemplateField HeaderText="Edit" ItemStyle-HorizontalAlign="Center">
    <ItemTemplate>
        <asp:ImageButton ID="imgEdit" runat="server" ImageUrl="~/Images/edit.jpg" CommandName="Edit" CausesValidation="false"/>
    </ItemTemplate>
    <EditItemTemplate>
    <asp:LinkButton ID="lnkUpdate" runat="server" Text="Update" CommandName="Update" CausesValidation="false"></asp:LinkButton>
    <asp:LinkButton ID="lnkCancel" runat="server" Text="Cancel" CommandName="Cancel" CausesValidation="false"></asp:LinkButton>
    </EditItemTemplate>
<ItemStyle HorizontalAlign="Center"></ItemStyle>
    </asp:TemplateField>
    <asp:TemplateField HeaderText="Delete" ItemStyle-HorizontalAlign="Center">
    <ItemTemplate>
        <asp:ImageButton ID="imgDelete" runat="server" ImageUrl="~/Images/delete.jpg" CommandName="Delete" CausesValidation="false" onclientclick="return confirm('Are you sure you want to delete?')" />
    </ItemTemplate>
    <EditItemTemplate>       
    </EditItemTemplate>
<ItemStyle HorizontalAlign="Center"></ItemStyle>
    </asp:TemplateField>
    </Columns>
        <EditRowStyle BackColor="#999999" />
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#E9E7E2" />
        <SortedAscendingHeaderStyle BackColor="#506C8C" />
        <SortedDescendingCellStyle BackColor="#FFFDF8" />
        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
    </asp:GridView>
    </fieldset>
    </div>
    </form>
</asp:Content>

