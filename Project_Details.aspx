<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeFile="Project_Details.aspx.cs" Inherits="gtu_pde.Project_Details" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style1
        {
            color: #800000;
        }
        .style2
        {
            color: #800000;
           
        }
        .style3
        {
            width: 250px;
            text-align:left;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <%--<div class="content_box">--%>
        <form runat="server">
            <table cellpadding="10px" cellspacing="10px" bgcolor="White" width="70%">
                <tr>
                    
                    <td class="style2"><strong>Team Id:</strong></td>
                    <td style="color: #800000"><asp:Label ID="lblTeamid" runat="server" Text=""></asp:Label></td>

                </tr>
                 
                <tr>
                    <td class="style3">Project Type:</td>
                    <td><asp:RadioButton ID="rbIDP" runat="server" Text="IDP" 
                            GroupName="rbgrpProjectType"/><asp:RadioButton ID="rbUDP" runat="server" 
                            Text="UDP" GroupName="rbgrpProjectType" /></td>
                </tr>
                <tr>
                   
                    <td class="style3"><asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                            style="color: #FF0000" ErrorMessage="*" ControlToValidate="txtProjectTitle"></asp:RequiredFieldValidator>Project Title:</td>
                    <td><asp:TextBox ID="txtProjectTitle" runat="server" Width="275px"></asp:TextBox></td>
                    
                </tr>
                <tr>
                    <td class="style3"><asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                            style="color: #FF0000" ErrorMessage="*" ControlToValidate="txtProjectAbstract"></asp:RequiredFieldValidator>Abstract of Project:</td>
                    <td><asp:TextBox ID="txtProjectAbstract" runat="server" Height="100px" 
                            TextMode="MultiLine" Width="275px"></asp:TextBox></td>
                </tr>
                <asp:Panel ID="pnlIDP" runat="server" Visible="true">
                <tr>
                    <td><asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtCompanyName" style="color: #FF0000" ErrorMessage="*"></asp:RequiredFieldValidator>Company/Industry Name:</td>
                    <td><asp:TextBox ID="txtCompanyName" runat="server" Width="275px"></asp:TextBox></td>
                </tr>
                <tr>
                    <td><asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server"  ControlToValidate="txtCompanyDetails" style="color: #FF0000" ErrorMessage="*"></asp:RequiredFieldValidator>Company/Industry Details:</td>
                    <td><asp:TextBox ID="txtCompanyDetails" runat="server" Height="100px" 
                            TextMode="MultiLine" Width="275px"></asp:TextBox></td>
                </tr>
                <tr>
                    <td colspan="2" class="style1"><strong> Representative Details</strong></td>
                </tr>
                <tr>
                    <td><asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server"  ControlToValidate="txtRepresentativeName" style="color: #FF0000" ErrorMessage="*"></asp:RequiredFieldValidator>Name</td>
                    <td><asp:TextBox ID="txtRepresentativeName" runat="server"  Width="275px"></asp:TextBox></td>
                </tr>
                <tr>
                    <td><asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" style="color: #FF0000"  ControlToValidate="txtRepresentativeContactNo" ErrorMessage="*"></asp:RequiredFieldValidator>Contact No:</td>
                    <td><asp:TextBox ID="txtRepresentativeContactNo" runat="server"  Width="275px"></asp:TextBox></td>
                </tr>
                <tr>
                    <td><asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" style="color: #FF0000" ControlToValidate="txtRepresentativeEmail" ErrorMessage="*"></asp:RequiredFieldValidator>Email:</td>
                    <td><asp:TextBox ID="txtRepresentativeEmail" runat="server"  Width="275px"></asp:TextBox></td>
                </tr>
                </asp:Panel>
                <tr>
                    <td colspan="2" class="style1"><strong>Internal Guide Details</strong></td>
                </tr>
                <tr>
                    <td class="style3"><asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                            style="color: #FF0000" ErrorMessage="*" ControlToValidate="txtInternalName"></asp:RequiredFieldValidator>Name</td>
                    <td><asp:TextBox ID="txtInternalName" runat="server"  Width="275px"></asp:TextBox></td>
                </tr>
                <tr>
                    <td class="style3"><asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
                            style="color: #FF0000" ErrorMessage="*" 
                            ControlToValidate="txtInternalContactNo"></asp:RequiredFieldValidator>Contact No:</td>
                    <td><asp:TextBox ID="txtInternalContactNo" runat="server"  Width="275px"></asp:TextBox></td>
                </tr>
                <tr>
                    <td class="style3"><asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" 
                            style="color: #FF0000" ErrorMessage="*" ControlToValidate="txtInternalEmail"></asp:RequiredFieldValidator>Email:</td>
                    <td><asp:TextBox ID="txtInternalEmail" runat="server"  Width="275px"></asp:TextBox></td>
                </tr>
                <tr>
                    <td colspan="2" class="style1"><strong>Project Details</strong></td>
                </tr>
                <tr>
                    <td class="style3">Disciplinary/Inter-Disciplinary:</td>
                    <td><asp:RadioButton ID="rbDisciplinary" runat="server" Text="Disciplinary" 
                            GroupName="rbgrpDisciplinary"/><asp:RadioButton ID="rbInterDisciplinary" runat="server" 
                            Text="Inter-Disciplinary" GroupName="rbgrpDisciplinary" /></td>
                </tr>
                <tr>
                    <td class="style3"><asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" 
                            style="color: #FF0000" ErrorMessage="*" ControlToValidate="txtSummary"></asp:RequiredFieldValidator>Problem Summary:</td>
                    <td><asp:TextBox ID="txtSummary" runat="server" Height="100px" 
                            TextMode="MultiLine" Width="275px"></asp:TextBox></td>
                </tr>
                <tr>
                    <td class="style3"><asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" 
                            style="color: #FF0000" ErrorMessage="*" ControlToValidate="txtDescription"></asp:RequiredFieldValidator>Detailed Description Problem:</td>
                    <td><asp:TextBox ID="txtDescription" runat="server" Height="100px" 
                            TextMode="MultiLine" Width="275px"></asp:TextBox></td>
                </tr>
                <tr>
                    <td class="style3"><asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" 
                            style="color: #FF0000" ErrorMessage="*" ControlToValidate="txtOutcome"></asp:RequiredFieldValidator>Expected Outcome:</td>
                    <td><asp:TextBox ID="txtOutcome" runat="server" Height="100px" 
                            TextMode="MultiLine" Width="275px"></asp:TextBox></td>
                </tr>
                <tr>
                    <td class="style3"><asp:RequiredFieldValidator ID="RequiredFieldValidator17" runat="server" 
                            style="color: #FF0000" ErrorMessage="*" ControlToValidate="txtOtherDescription"></asp:RequiredFieldValidator>Other Description(if any):</td>
                    <td><asp:TextBox ID="txtOtherDescription" runat="server" Height="100px" 
                            TextMode="MultiLine" Width="275px"></asp:TextBox></td>
                </tr>
                 
                <tr>
                    <td class="style2" colspan="2"><strong>Is Your Project Of 7th Semester Continued To 8th Semester?</strong></td>
                </tr>
                <tr>
                    <td></td>
                    <td><asp:RadioButton ID="rbYes" runat="server" Text="Yes" 
                            GroupName="rbgrpYesNo"/><br /><asp:RadioButton ID="rbNo" runat="server" 
                            Text="No" GroupName="rbgrpYesNo" /></td>
                </tr>
                <asp:Panel ID="pnlTeamDetails" runat="server">
                
                <tr>
                    <td class="style2" colspan="2"><strong>Team Details Of 8th Semester Project:</strong></td>
                </tr>
                <tr>
                    <td></td>
                    <td><asp:RadioButton ID="rbSameTeam" runat="server" Text="With Same Team As 7th Semester" 
                            GroupName="rbgrpTeamDetails"/><br /><asp:RadioButton ID="rbNewTeam" runat="server" 
                            Text="With New Team/Some Changes In 7th Semester" GroupName="rbgrpTeamDetails" /></td>
                </tr>
                </asp:Panel>
                <asp:Panel ID="pnlReason" runat="server">
                <tr>
                    <td class="style2" colspan="2"><strong>Reason For Project Change:</strong></td>
                </tr>
                <tr>
                    <td></td>
                    <td><asp:RadioButton ID="rbReason1" runat="server" Text="Semester 7 Project is Completed and Working on New Project" 
                            GroupName="rbgrpReason"/><br />
                            <asp:RadioButton ID="rbReason2" runat="server" Text="Company is Blacklisted Closed or Changed" 
                            GroupName="rbgrpReason"/><br />
                            <asp:RadioButton ID="rbReason3" runat="server" Text="Any Team Partner is Detained or Removed" 
                            GroupName="rbgrpReason"/><br />
                            <asp:RadioButton ID="rbReason4" runat="server" Text="Project Definition is not enough for Continuation" 
                            GroupName="rbgrpReason"/><br />
                            <asp:RadioButton ID="rbReason5" runat="server" Text="Other" 
                            GroupName="rbgrpReason"/><br />
                    </td>
                </tr>
                </asp:Panel>    
            </table>
             <center><asp:Button ID="btnSubmit" runat="server" Text="Submit" />
                        <asp:Button ID="btnReset" runat="server" Text="Reset" /></center>
        
        </form>           
    <%--</div>--%>
</asp:Content>
