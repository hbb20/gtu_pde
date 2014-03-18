<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeFile="Editmembers.aspx.cs" Inherits="Editmembers" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            height: 55px;
        }
        .style2
        {
            color: #000000;
        }
        .style3
        {
            color: #000000;
            font-weight: bold;
            width: 212px;
        }
        .style4
        {
            width: 99px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="Form1" runat="server">
<table align="center" cellpadding="0" cellspacing="0"
            
    style="background-position: center center; width: 500px; background-repeat: repeat; background-color: #FFFFFF; height: 335px; margin-top: 0px;">
            <tr><td colspan="2" class="style1"><h2>
                    Edit Members Details</h2></td></tr>
            <tr>
            
                <td align="left" height="40px" style="padding-left: 100px" 
                    class="style3">
                    Enrollment no:&nbsp;
                </td>
                <td align="left" height="40px" style="padding-left: 10px" width="250px">
                    <asp:TextBox ID="TextBox1" runat="server" Enabled="False"></asp:TextBox>
                </td>
            </tr>
            <tr>
            
                <td align="left" height="40px" style="padding-left: 100px" 
                    class="style3">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="TextBox2" ErrorMessage="Enter Name" ForeColor="Red" 
                        CssClass="style2">*</asp:RequiredFieldValidator>
                    <span class="style2">Name:&nbsp;
                </span>
                </td>
                <td align="left" height="40px" style="padding-left: 10px" width="250px">
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
             
                <td align="left" height="40px" style="padding-left: 100px" 
                    class="style3">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="TextBox3" ErrorMessage="Enter EmailId" ForeColor="Red" 
                        CssClass="style2">*</asp:RequiredFieldValidator>
                    <span class="style2">EmailId:</span></td>
                <td align="left" height="40px" style="padding-left: 10px" width="250px">
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
            
                <td align="left" height="40px" style="padding-left: 100px" 
                    class="style3">
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                        ControlToValidate="TextBox4" ErrorMessage="Invalid No." ForeColor="Red" 
                        CssClass="style2">*</asp:RegularExpressionValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ControlToValidate="TextBox4" ErrorMessage="Enter Contact No." 
                        ForeColor="Red" CssClass="style2">*</asp:RequiredFieldValidator>
                    <span class="style2">Contact no:&nbsp;
                </span>
                </td>
                <td align="left" height="40px" style="padding-left: 10px" width="250px">
                    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
            
                <td align="left" height="40px" style="padding-left: 100px" 
                    class="style3">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ControlToValidate="TextBox5" ErrorMessage="Enter Department Name" 
                        ForeColor="Red" CssClass="style2">*</asp:RequiredFieldValidator>
                    <span class="style2">Department Name:</span></td>
                <td align="left" height="40px" style="padding-left: 10px" width="250px">
                    <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
             
                <td align="left" height="40px" style="padding-left: 100px" 
                    class="style3">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                        ControlToValidate="TextBox6" ErrorMessage="Enter College Name" 
                        ForeColor="Red" CssClass="style2">*</asp:RequiredFieldValidator>
                    <span class="style2">College Name</span></td>
                <td align="left" height="40px" style="padding-left: 10px" width="250px">
                    <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
            
                <td align="center" colspan="2" height="40px" style="width: 500px" width="250px">
                    <%--&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;--%>
                    <asp:Button ID="Button1" runat="server" Text="UPDATE" Width="100px" 
                        BackColor="Maroon" ForeColor="White" Font-Bold="True" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button2" runat="server" Text="RESET" Width="100px" 
                        BackColor="Maroon" ForeColor="White" Font-Bold="True" />
                           <%-- &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;--%>
                </td>
            </tr>
            
            </table>
            </form>
            
 
</asp:Content>

