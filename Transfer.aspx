<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="Transfer.aspx.cs" Inherits="Transfer" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            font-weight: bold;
        }
        .style2
        {
            color: #000000;
            font-weight: bold;
        }
        .style3
        {
            color: #000000;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" cellpadding="0" cellspacing="0"
            style="background-position: center center; width: 500px; background-repeat: repeat; background-color: #FFFFFF;">
            <h2>
                    Transfer Details</h2>
            <tr>
                <td align="left" height="40px" width="250px" style="padding-left: 100px" 
                    class="style2">
                    Existing Enrollment 
                    <br />
                    Number :</td>
                <td align="left" height="40px" style="padding-left: 10px" width="250px">
                    <asp:TextBox ID="txtexisting_enrollno" runat="server"></asp:TextBox>
                </td>
            </tr>
            
            <tr>
                <td align="left" height="40px" width="250px" style="padding-left: 100px" 
                    class="style2">
                    Student&#39;s Name:</td>
                <td align="left" height="40px" style="padding-left: 10px" width="250px">
                    <asp:TextBox ID="txt_studentsname" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="left" height="40px" width="250px" style="padding-left: 100px" 
                    class="style2">
                    Old College&#39;s Code:&nbsp;
                </td>
                <td align="left" height="40px" style="padding-left: 10px" width="250px">
                    <asp:TextBox ID="txt_old_clg_code" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="left" height="40px" width="250px" style="padding-left: 100px" 
                    class="style2">
                    Old College&#39;s Name:&nbsp;
                </td>
                <td align="left" height="40px" style="padding-left: 10px" width="250px">
                    <asp:TextBox ID="txt_old_clg_name" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="left" height="40px" width="250px" style="padding-left: 100px" 
                    class="style2">
                    Department:</td>
                <td align="left" height="40px" style="padding-left: 10px" width="250px">
                    <asp:TextBox ID="txt_dept" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="left" height="40px" width="250px" style="padding-left: 100px" 
                    class="style2">
                    &nbsp;</td>
                <td align="left" height="40px" style="padding-left: 10px" width="250px" 
                    class="style3">
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="left" height="40px" width="250px" style="padding-left: 100px" 
                    class="style2">
                    New Enrollment Number:</td>
                <td align="left" height="40px" style="padding-left: 10px" width="250px">
                    <asp:TextBox ID="txt_new_enroll" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="left" height="40px" width="250px" style="padding-left: 100px" 
                    class="style2">
                    New College&#39;s Code:&nbsp;
                </td>
                <td align="left" height="40px" style="padding-left: 10px" width="250px">
                    <asp:TextBox ID="txt_new_clg_code" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="left" height="40px" width="250px" style="padding-left: 100px" 
                    class="style2">
                    New College&#39;s Name:</td>
                <td align="left" height="40px" style="padding-left: 10px" width="250px">
                    <asp:TextBox ID="txt_new_clg_name" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="left" height="40px" width="250px" style="padding-left: 100px" 
                    class="style2">
                    Contact No.:</td>
                <td align="left" height="40px" style="padding-left: 10px" width="250px">
                    <asp:TextBox ID="txt_contact_no" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="left" height="40px" width="250px" style="padding-left: 100px" 
                    class="style2">
                    E-mail Id:</td>
                <td align="left" height="40px" style="padding-left: 10px" width="250px">
                    <asp:TextBox ID="txt_email_id" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="center" colspan="2" height="40px" style="width: 500px" width="250px">
                    <asp:Button ID="btn_add" runat="server" Text="ADD" Width="100px" 
                        BackColor="Maroon" ForeColor="White" CssClass="style1" Font-Bold="True" />
                </td>
            </tr>
            
            <tr>
                <td align="right" height="30px" width="250px" colspan="2" style="width: 500px" 
                    class="style2">
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="center" colspan="2" height="30px" style="width: 500px" width="250px" 
                    class="style2">
                    &nbsp;</td>
            </tr>
        </table>

</asp:Content>

