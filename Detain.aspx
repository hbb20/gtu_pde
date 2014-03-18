<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="Detain.aspx.cs" Inherits="Detain" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            color: #000000;
        }
        .style2
        {
            font-weight: bold;
        }
        .style3
        {
            color: #000000;
            font-weight: bold;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" cellpadding="0" cellspacing="0"
            style="background-position: center center; width: 500px; background-repeat: repeat; background-color: #FFFFFF;">
            <h2>
                    Detained Student&#39;s Details</h2>
            <tr>
                <td align="left" height="40px" width="250px" style="padding-left: 100px" 
                    class="style3">
                    Enrollment Number:</td>
                <td align="left" height="40px" style="padding-left: 10px" width="250px">
                    <asp:TextBox ID="txtenrollno" runat="server" CssClass="style2"></asp:TextBox>
                </td>
            </tr>
            
            <tr>
                <td align="left" height="40px" width="250px" style="padding-left: 100px" 
                    class="style3">
                    College&#39;s Code:</td>
                <td align="left" height="40px" style="padding-left: 10px" width="250px">
                    <asp:TextBox ID="txtcollegecode" runat="server" CssClass="style2"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="left" height="40px" width="250px" style="padding-left: 100px" 
                    class="style3">
                    College&#39;s Name:</td>
                <td align="left" height="40px" style="padding-left: 10px" width="250px">
                    <asp:TextBox ID="txtcollegename" runat="server" CssClass="style2"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="left" height="40px" width="250px" style="padding-left: 100px" 
                    class="style3">
                    Department:</td>
                <td align="left" height="40px" style="padding-left: 10px" width="250px">
                    <asp:TextBox ID="txtdepartment" runat="server" CssClass="style2"></asp:TextBox>
                </td>
            </tr>
            <tr class="style1">
                <td align="left" height="40px" width="250px" style="padding-left: 100px">
                    &nbsp;</td>
                <td align="left" height="40px" style="padding-left: 10px" width="250px" 
                    class="style2">
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="center" colspan="2" height="40px" style="width: 500px" width="250px">
                    <asp:Button ID="btn_add" runat="server" Text="ADD" Width="100px" 
                        BackColor="Maroon" ForeColor="White" BorderColor="White" 
                        BorderStyle="Groove" Font-Bold="True" CssClass="style2" />
                </td>
            </tr>
            
            <tr>
                <td align="right" height="30px" width="250px" colspan="2" style="width: 500px" 
                    class="style3">
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="center" colspan="2" height="30px" style="width: 500px" width="250px" 
                    class="style3">
                    &nbsp;</td>
            </tr>
        </table>


</asp:Content>

