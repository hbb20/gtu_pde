<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="gtu_pde.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style1
        {
            height: 98px;
        }
        .style2
        {
            height: 51px;
        }
        .style3
        {
            width: 647px;
            height: 92px;
        }
        .style4
        {
            width: 321px;
            height: 92px;
        font-weight: bold;
    }
        .style5
        {
            width: 321px;
            height: 65px;
        font-weight: bold;
    }
        .style6
        {
            width: 647px;
            height: 65px;
        }
        .style7
        {
            width: 321px;
            height: 45px;
        font-weight: bold;
    }
        .style8
        {
            width: 647px;
            height: 45px;
        }
    .style9
    {
        color: #000000;
    }
    .style10
    {
        font-weight: bold;
    }
    .style11
    {
        height: 51px;
        font-weight: bold;
    }
    .style12
    {
        height: 49px;
    }
    </style>
</asp:Content>
<%--right-side--%>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <form  id="form2" action="">
                    <table bgcolor="White">
                        <tr><td colspan="2" class="style12"><h2>Welcome To GTU</h2></td></tr>
                        <tr class="style9">
                            <td class="style7">
                                <asp:Label ID="lblTeamidfix" runat="server" Text="Team  Id"></asp:Label>

                            </td>
                            <td class="style8">
                                <asp:Label ID="lblTeamiddisplay" runat="server" Text="" Visible="False"></asp:Label>
                            </td>
                            </tr>
                            <tr class="style9">
                            <td class="style4">
                                <asp:Label ID="lblMemberdetailsfix" runat="server" Text="Member Details"></asp:Label>

                            </td>
                            <td class="style3">
                                <asp:Label ID="lblMemberdetailsdisplay1" runat="server" Text="" Visible="False"></asp:Label>
                                <br />
                                <asp:Label ID="lblMemberdetailsdisplay2" runat="server" Text="" Visible="False"></asp:Label>
                                <br />
                                <asp:Label ID="lblMemberdetailsdisplay3" runat="server" Text="" Visible="False"></asp:Label>

                            </td>
                            </tr>
                            <tr class="style9">
                                <td class="style5">
                                <asp:Label ID="lblProjecttitlefix" runat="server" Text="Project Title"></asp:Label>

                                </td>
                                <td class="style6">
                                    <asp:Label ID="lblProjecttitledisplay" runat="server" Text="" Visible="False"></asp:Label>
                                </td>
                            </tr>
                     </table>
                
                </form>
  </asp:Content>
  <%--left-side--%>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <h2>New Member Request</h2>
               
                <form  id="form1" runat="server">
                    <table style="width: 275px; height: 228px;" bgcolor="White">
                        <tr class="style9">
                            <td class="style11">
                                <asp:Label ID="lblEnrollfix" runat="server" Text="Enrollment No"></asp:Label>
                            </td>
                            <td class="style2">
                                <asp:Label ID="lblEnrolldisplay" runat="server" Visible="False"></asp:Label>
                            </td>
                        </tr>
                        <tr class="style9">
                            <td class="style11">
                                <asp:Label ID="lblNamefix" runat="server" Text="Name"></asp:Label>
                            </td>
                            <td class="style2">
                            <asp:Label ID="lblNamedisplay" runat="server" Text="" Visible="False"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                        <td class="style1" align="center">
                            <asp:Button ID="btnConfirm" runat="server" Text="Confirm" Width="80px" 
                                style="margin-left: 16px" BackColor="Maroon" CssClass="style10" 
                                Font-Bold="True" ForeColor="White" />
                        </td>
                        <td class="style1">
                            <asp:Button ID="btnReject" runat="server" Text="Reject" Width="80px" 
                                style="margin-left: 16px" BackColor="Maroon" Font-Bold="True" 
                                ForeColor="White" />
                        </td>
                        </tr>
                    </table>
                    </form>
       
  
                   
			
</asp:Content>
