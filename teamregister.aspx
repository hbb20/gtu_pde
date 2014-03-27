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
<form id="form1" runat="server" >
    <table align="center" cellpadding="0" cellspacing="0"
            style="background-position: center center; width: 500px; background-repeat: repeat;" bgcolor="White">
            <tr>
                <td colspan="3">            <h2>
                    New Team Registration</h2></td>
            </tr>
            <tr class="style1">
                <td align="left" height="40px" width="250px" style="padding-left: 100px">
                    
                    &nbsp;&nbsp;
                    
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
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ErrorMessage="*" ControlToValidate="txtEnrollmentNo" ForeColor="Red" 
                        ValidationGroup="btnGo"></asp:RequiredFieldValidator>
                    Enrollment no:&nbsp;
                </td>
                <td align="left" height="40px" style="padding-left: 10px; margin-left: 40px;" 
                    width="230px">
                    <asp:TextBox ID="txtEnrollmentNo" runat="server"  
                        ></asp:TextBox>
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
                   
                    &nbsp;&nbsp; College code:&nbsp;
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
                    &nbsp;&nbsp; Department:</td>
                <td align="left" height="40px" style="padding-left: 10px" width="230px">
                    <asp:TextBox ID="txtDepartment" runat="server" Enabled="False"></asp:TextBox>
                </td>
                <td width="70">
                    <asp:HiddenField ID="hfStudentId" runat="server"/>
                </td>
            </tr>
            <tr>
                <td align="left" height="40px" width="250px" style="padding-left: 100px" 
                    class="style1">
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ErrorMessage="*" ControlToValidate="txtContactNo" ForeColor="Red" 
                         ValidationGroup="btnSubmit"></asp:RequiredFieldValidator>
                    Contact no:&nbsp;
                </td>
                <td align="left" height="40px" style="padding-left: 10px" width="230px">
                    <asp:TextBox ID="txtContactNo" runat="server"></asp:TextBox>
                </td>
                <td width="70">
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                        ControlToValidate="txtContactNo" ErrorMessage="10 digit No. Only" 
                        ForeColor="Red" ValidationExpression="^[0-9]{10}$" ValidationGroup="btnSubmit"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td align="left" height="40px" width="250px" style="padding-left: 100px" 
                    class="style1">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                        ErrorMessage="*" ControlToValidate="txtEmailid" ForeColor="Red" 
                        ValidationGroup="btnSubmit"></asp:RequiredFieldValidator>
                    Email id:</td>
                <td align="left" height="40px" style="padding-left: 10px" width="230px">
                    <asp:TextBox ID="txtEmailid" runat="server"></asp:TextBox>
                </td>
                <td width="70">
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                        ControlToValidate="txtEmailid" ErrorMessage="Not Valid Mail Id" ForeColor="Red" 
                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                        ValidationGroup="btnSubmit"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
            <td align="center" colspan="3" height="40px" style="width: 500px" width="250px">
                     <asp:Button ID="btnAdd" runat="server" Text="ADD" Width="100px" 
                        BackColor="Maroon" ForeColor="White" BorderStyle="Groove" 
                        Font-Bold="True"  style="height: 26px" onclick="btnAdd_Click" ValidationGroup="btnSubmit"  
                          />
                </td>
            </tr>
            
            <tr align="center">
                <td align="center" height="30px" width="250px" colspan="3" style="width: 500px">
                    <asp:Panel ID="Panel1" runat="server" Visible="false" >
                      
                        <asp:GridView ID="GridView1" runat="server" 
                            onrowdeleting="GridView1_RowDeleting" 
                            onselectedindexchanged="GridView1_SelectedIndexChanged" >
                            <Columns>
                                <asp:CommandField ButtonType="Button" ShowDeleteButton="True" />
                            </Columns>
                         </asp:GridView>   
                        
                         <center>
                             
                             <asp:Button ID="btnNext" runat="server" Text="Next" Width="100px" 
                        BackColor="Maroon" ForeColor="White" BorderStyle="Groove" 
                        Font-Bold="True"  style="height: 26px" onclick="btnNext_Click"  
                          /></center>
                    </asp:Panel>

                </td>
            </tr>
            <tr>
                <td colspan="3">
                <asp:Panel ID="Panel2" runat="server" Visible="false">
                    <table align="center" cellpadding="0" cellspacing="0"
            style="background-position: center center; width: 500px; background-repeat: repeat;" bgcolor="White">
                        
                        <tr>
                            <td align="left" height="40px" width="250px" style="padding-left: 100px" 
                    class="style1">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                    ErrorMessage="*" ControlToValidate="txtUserName" ForeColor="Red" 
                                    ValidationGroup="btnSubmit1"></asp:RequiredFieldValidator>User Name</td>
                            <td align="left" height="40px" style="padding-left: 10px; margin-left: 40px;" 
                    width="230px">
                                <asp:TextBox ID="txtUserName" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td align="left" height="40px" width="250px" style="padding-left: 100px" 
                    class="style1">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                    ErrorMessage="*" ControlToValidate="txtPassword" ForeColor="Red" ValidationGroup="btnSubmit1"></asp:RequiredFieldValidator>Password</td>
                            <td align="left" height="40px" style="padding-left: 10px; margin-left: 40px;" 
                    width="220px">
                                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td align="left" height="40px" width="250px" style="padding-left: 100px" 
                    class="style1">
                                
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                                    ErrorMessage="*" ControlToValidate="txtConfirmPassword" ForeColor="Red" 
                                    ValidationGroup="btnSubmit1"></asp:RequiredFieldValidator>Confirm Password</td>
                            <td align="left" height="40px" style="padding-left: 10px; margin-left: 40px;" 
                    width="230px">
                                <asp:TextBox ID="txtConfirmPassword" runat="server" TextMode="Password"></asp:TextBox><asp:CompareValidator ID="CompareValidator2" runat="server" 
                                    ControlToCompare="txtPassword" ControlToValidate="txtConfirmPassword" 
                                    ErrorMessage="Password doesn't match" ForeColor="Red" 
                                    ValidationGroup="btnSubmit1"></asp:CompareValidator>
                            </td>
                        </tr>
                        <tr>
                            <td align="left" height="40px" width="250px" style="padding-left: 100px" 
                    class="style1">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                                    ErrorMessage="*" ControlToValidate="ddlSecurityQuestion" ForeColor="Red" 
                                    ValidationGroup="btnSubmit1"></asp:RequiredFieldValidator>Security Question</td>
                            <td align="left" height="40px" style="padding-left: 10px; margin-left: 40px;" 
                    width="230px">
                                <asp:DropDownList ID="ddlSecurityQuestion" runat="server" Height="20px" 
                           Width="200px">
                        <asp:ListItem Text="Select your security question" Value="0"></asp:ListItem>
                        <asp:ListItem Text="Which is your native place?" Value="1"></asp:ListItem>
                        <asp:ListItem Text="Who is your best friend?" Value="2"></asp:ListItem>
                        <asp:ListItem Text="What is your school name?" Value="3"></asp:ListItem>
                        <asp:ListItem Text="What is your college name?" Value="4"></asp:ListItem>
                        <asp:ListItem Text="Which is your favourite food?" Value="5"></asp:ListItem>
                        <asp:ListItem Text="What is your childhood nick name?" Value="6"></asp:ListItem>
                        <asp:ListItem Text="Which is your favourite colour?" Value="7"></asp:ListItem>
                        <asp:ListItem Text="What is the name of your of favourite cousin?" Value="8"></asp:ListItem>
                    </asp:DropDownList>
                                <asp:CompareValidator ID="CompareValidator3" runat="server" 
                                    ControlToValidate="ddlSecurityQuestion" Operator="NotEqual" ValueToCompare="0" ErrorMessage="Select Your Question" 
                                    ForeColor="Red" ValidationGroup="btnSubmit1"></asp:CompareValidator>
                            </td>
                        </tr>
                        <tr>
                            <td align="left" height="40px" width="250px" style="padding-left: 100px" 
                    class="style1">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                                    ErrorMessage="*" ControlToValidate="txtAnswer" ForeColor="Red" 
                                    ValidationGroup="btnSubmit1"></asp:RequiredFieldValidator>Security Answer</td>
                            <td align="left" height="40px" style="padding-left: 10px; margin-left: 40px;" 
                    width="230px">
                                <asp:TextBox ID="txtAnswer" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2"><center>
                                <asp:Button ID="btnSubmit" runat="server" Text="Submit" Width="100px" 
                        BackColor="Maroon" ForeColor="White" BorderStyle="Groove" 
                        Font-Bold="True"  style="height: 26px" onclick="btnSubmit_Click" ValidationGroup="btnSubmit1"  
                          />
                          </center>

                            </td>
                        </tr>
                    </table>
                  
                    <asp:Label ID="lblTeamId" runat="server" Visible="False" Font-Bold="True" 
                        ForeColor="#990000"></asp:Label>
                         
                </asp:Panel>
                </td>
            </tr>
            
        </table>
        </form>
    
            
</asp:Content>

