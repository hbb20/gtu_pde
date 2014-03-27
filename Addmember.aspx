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
    <form id="form1" runat="server">
        <table align="center" cellpadding="0" cellspacing="0"
            style="background-position: center center; width: 500px; background-repeat: repeat; background-color: #FFFFFF;">
            <tr>
                <td colspan="2"><h2>
                    Add New Team Member</h2></td>
            </tr>
            <tr class="style1">
                <td align="left" height="40px" width="250px" style="padding-left: 100px">
                    Semester:</td>
                <td align="left" height="40px" style="padding-left: 10px" width="230px">
                    <asp:RadioButton ID="RadioButton1" GroupName="rbtn1" runat="server" Text="7<sup>th</sup> SEM" />
                    &nbsp;&nbsp;
                    <asp:RadioButton ID="RadioButton2" GroupName="rbtn1" runat="server" Text="8<sup>th</sup> SEM" Checked="true"/>
                </td>
                <td width="70"></td>
            </tr>
            <tr>
                <td align="left" height="40px" width="250px" style="padding-left: 100px" 
                    class="style1">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ErrorMessage="*" ControlToValidate="txtTeamId" ValidationGroup="btnSubmit"></asp:RequiredFieldValidator>
                    Team Id:&nbsp;
                </td>
                <td align="left" height="40px" style="padding-left: 10px; margin-left: 40px;" 
                    width="230px">
                    <asp:TextBox ID="txtTeamId" runat="server"  
                        ></asp:TextBox>
                </td>
                <td >
                </td>
            </tr>
            <tr>
                <td align="left" height="40px" width="250px" style="padding-left: 100px" 
                    class="style1">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ErrorMessage="*" ControlToValidate="txtEnrollmentNo" 
                        ValidationGroup="btnGo"></asp:RequiredFieldValidator>
                    Enrollment no:&nbsp;
                </td>
                <td align="left" height="40px" style="padding-left: 10px; margin-left: 40px;" 
                    width="230px">
                    <asp:TextBox ID="txtEnrollmentNo" runat="server" ></asp:TextBox>
                </td>
                <td width="70">
                    <asp:Button ID="btnGo" runat="server" Text="Go"   BackColor="Maroon" 
                        ForeColor="White" BorderStyle="Groove" 
                        Font-Bold="True"  style="height: 26px; text-align:left; margin-left: 0px;" 
                        width="50px" onclick="btnGo_Click" ValidationGroup="btnGo" 
                         />
                </td>
            </tr>
            
            <tr>
                <td align="left" height="40px" width="250px" style="padding-left: 100px" 
                    class="style1">
                    &nbsp;
                    College code:&nbsp;
                </td>
                <td align="left" height="40px" style="padding-left: 10px" width="230px">
                    <asp:TextBox ID="txtCollegeCode" runat="server" Enabled="False" 
                        ></asp:TextBox>
                </td>
                <td width="70"></td>
            </tr>
            <tr>
                <td align="left" height="40px" width="250px" style="padding-left: 100px" 
                    class="style1">
                    &nbsp;
                    Department:</td>
                <td align="left" height="40px" style="padding-left: 10px" width="230px">
                    <asp:TextBox ID="txtDepartment" runat="server" Enabled="False"></asp:TextBox>
                </td>
                <td width="70"></td>
            </tr>
            <tr>
                <td align="left" height="40px" width="250px" style="padding-left: 100px" 
                    class="style1">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ErrorMessage="*" ControlToValidate="txtContactNo" 
                        ValidationGroup="btnSubmit"></asp:RequiredFieldValidator>
                    Contact no:&nbsp;
                </td>
                <td align="left" height="40px" style="padding-left: 10px" width="230px">
                    <asp:TextBox ID="txtContactNo" runat="server"></asp:TextBox>
                </td>
                <td width="70"></td>
            </tr>
            <tr>
                <td align="left" height="40px" width="250px" style="padding-left: 100px" 
                    class="style1">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ErrorMessage="*" ControlToValidate="txtEmailid" 
                        ValidationGroup="btnSubmit"></asp:RequiredFieldValidator>
                    Email id:</td>
                <td align="left" height="40px" style="padding-left: 10px" width="230px">
                    <asp:TextBox ID="txtEmailid" runat="server"></asp:TextBox>
                </td>
                <td width="70"></td>
            </tr>
            
            <tr>
                <td align="center" colspan="2" height="40px" style="width: 500px" width="250px">
                    <asp:Button ID="btnSubmit" runat="server" Text="Submit" Width="100px" 
                        BackColor="Maroon" ForeColor="White" Font-Bold="True" 
                        onclick="btnSubmit_Click" />
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

    </form>  

</asp:Content>

