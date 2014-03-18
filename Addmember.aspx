<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="Addmember.aspx.cs" Inherits="Addmember" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            color: #000000;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" cellpadding="0" cellspacing="0"
            style="background-position: center center; width: 500px; background-repeat: repeat; background-color: #FFFFFF;">
            <h2>
                    Add New Team Member</h2>
            <tr class="style1">
                <td align="left" height="40px" width="250px" style="padding-left: 100px">
                    Semester:</td>
                <td align="left" height="40px" style="padding-left: 10px" width="250px">
                    <asp:RadioButton ID="rb7thsem" runat="server" Text="7<sup>th</sup> SEM" />
                    &nbsp;&nbsp;
                    <asp:RadioButton ID="RadioButton2" runat="server" Text="8<sup>th</sup> SEM" />
                </td>
            </tr>
            
            <tr>
                <td align="left" height="40px" width="250px" style="padding-left: 100px" 
                    class="style1">
                    Team Id:</td>
                <td align="left" height="40px" style="padding-left: 10px" width="250px">
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="left" height="40px" width="250px" style="padding-left: 100px" 
                    class="style1">
    
                    Enrollment no:&nbsp;
                </td>
                <td align="left" height="40px" style="padding-left: 10px" width="250px">
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="left" height="40px" width="250px" style="padding-left: 100px" 
                    class="style1">
                    College code:&nbsp;
                </td>
                <td align="left" height="40px" style="padding-left: 10px" width="250px">
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="left" height="40px" width="250px" style="padding-left: 100px" 
                    class="style1">
                    Department:</td>
                <td align="left" height="40px" style="padding-left: 10px" width="250px">
                    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="left" height="40px" width="250px" style="padding-left: 100px" 
                    class="style1">
                    Contact no:&nbsp;
                </td>
                <td align="left" height="40px" style="padding-left: 10px" width="250px">
                    <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="left" height="40px" width="250px" style="padding-left: 100px" 
                    class="style1">
                    Email id:</td>
                <td align="left" height="40px" style="padding-left: 10px" width="250px">
                    <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="center" colspan="2" height="40px" style="width: 500px" width="250px">
                    <asp:Button ID="Button1" runat="server" Text="SUBMIT" Width="100px" 
                        BackColor="Maroon" ForeColor="White" Font-Bold="True" />
                </td>
            </tr>
            
            <tr>
                <td align="right" height="30px" width="250px" colspan="2" style="width: 500px">
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="center" colspan="2" height="30px" style="width: 500px" width="250px">
                    &nbsp;</td>
            </tr>
        </table>

</asp:Content>

