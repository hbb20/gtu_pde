<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="teamregister.aspx.cs" Inherits="teamregister" %>

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
            style="background-position: center center; width: 500px; background-repeat: repeat;" bgcolor="White">
            <tr>
                <td>            <h2>
                    New Team Registration</h2></td>
            </tr>
            <tr class="style1">
                <td align="left" height="40px" width="250px" style="padding-left: 100px">
                    Semester:</td>
                <td align="left" height="40px" style="padding-left: 10px" width="250px">
                    <asp:RadioButton ID="RadioButton1" GroupName="rbtn1" runat="server" Text="7<sup>th</sup> SEM" />
                    &nbsp;&nbsp;
                    <asp:RadioButton ID="RadioButton2" GroupName="rbtn1" runat="server" Text="8<sup>th</sup> SEM" />
                </td>
            </tr>
            <tr>
                <td align="left" height="40px" width="250px" style="padding-left: 100px" 
                    class="style1">
                    Enrollment no:&nbsp;
                </td>
                <td align="left" height="40px" style="padding-left: 10px" width="250px">
                    <asp:TextBox ID="txtEnrollmentNo" runat="server" 
                        ></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="left" height="40px" width="250px" style="padding-left: 100px" 
                    class="style1">
                    College code:&nbsp;
                </td>
                <td align="left" height="40px" style="padding-left: 10px" width="250px">
                    <asp:TextBox ID="txtCollegeCode" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="left" height="40px" width="250px" style="padding-left: 100px" 
                    class="style1">
                    Department:</td>
                <td align="left" height="40px" style="padding-left: 10px" width="250px">
                    <asp:TextBox ID="txtDepartment" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="left" height="40px" width="250px" style="padding-left: 100px" 
                    class="style1">
                    Contact no:&nbsp;
                </td>
                <td align="left" height="40px" style="padding-left: 10px" width="250px">
                    <asp:TextBox ID="txtContactNo" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="left" height="40px" width="250px" style="padding-left: 100px" 
                    class="style1">
                    Email id:</td>
                <td align="left" height="40px" style="padding-left: 10px" width="250px">
                    <asp:TextBox ID="txtEmailid" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="center" colspan="2" height="40px" style="width: 500px" width="250px">
                     <asp:Button ID="btnAdd" runat="server" Text="ADD" Width="100px" 
                        BackColor="Maroon" ForeColor="White" BorderStyle="Groove" 
                        Font-Bold="True"  style="height: 26px" onclick="btnAdd_Click"
                          />
                </td>
            </tr>
            
            <tr>
                <td align="right" height="30px" width="250px" colspan="2" style="width: 500px">
                    <asp:Panel ID="Panel1" runat="server" >
                      
                        <asp:GridView ID="GridView1" runat="server">
                        </asp:GridView>     
                    </asp:Panel>
                </td>
            </tr>
            <tr>
                <td align="center" colspan="2" height="30px" style="width: 500px" width="250px">
                    &nbsp;</td>
            </tr>
        </table>
        </form>
    
            
</asp:Content>

