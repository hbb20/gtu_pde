<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="gtu_pde.Home" %>
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




<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<asp:Table ID="Table1" runat="server">
<asp:TableRow>
<asp:TableCell Width="30%">

                    <asp:Table runat="server" bgcolor="White">
                        <asp:TableRow><asp:TableCell colspan="2" class="style12"><h2>Welcome To GTU</h2></asp:TableCell></asp:TableRow>
                        <asp:TableRow class="style9">
                            <asp:TableCell class="style7">
                                <asp:Label ID="lblTeamidfix" runat="server" Text="Team  Id"></asp:Label>

                            </asp:TableCell>
                            <asp:TableCell class="style8">
                                <asp:Label ID="lblTeamiddisplay" runat="server" Text="" Visible="False"></asp:Label>
                            </asp:TableCell>
                            </asp:TableRow>
                            <asp:TableRow class="style9">
                            <asp:TableCell class="style4">
                                <asp:Label ID="lblMemberdetailsfix" runat="server" Text="Member Details"></asp:Label>

                            </asp:TableCell>
                            <asp:TableCell class="style3">
                                <asp:Label ID="lblMemberdetailsdisplay1" runat="server" Text="" Visible="False"></asp:Label>
                                <br />
                                <asp:Label ID="lblMemberdetailsdisplay2" runat="server" Text="" Visible="False"></asp:Label>
                                <br />
                                <asp:Label ID="lblMemberdetailsdisplay3" runat="server" Text="" Visible="False"></asp:Label>

                            </asp:TableCell>
                            </asp:TableRow>
                            <asp:TableRow class="style9">
                                <asp:TableCell class="style5">
                                <asp:Label ID="lblProjecttitlefix" runat="server" Text="Project Title"></asp:Label>

                                </asp:TableCell>
                                <asp:TableCell class="style6">
                                    <asp:Label ID="lblProjecttitledisplay" runat="server" Text="" Visible="False"></asp:Label>
                                </asp:TableCell>
                            </asp:TableRow>
                     </asp:Table>
                
           </asp:TableCell>   

<asp:TableCell width="70%">
              
                
                    <asp:Table runat="server" style="width: 275px; height: 228px;" bgcolor="White">
                        <asp:TableRow class="style9">
                            <asp:TableCell class="style11">
                                <asp:Label ID="lblEnrollfix" runat="server" Text="Enrollment No"></asp:Label>
                            </asp:TableCell>
                            <asp:TableCell class="style2">
                                <asp:Label ID="lblEnrolldisplay" runat="server" Visible="False"></asp:Label>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow class="style9">
                            <asp:TableCell class="style11">
                                <asp:Label ID="lblNamefix" runat="server" Text="Name"></asp:Label>
                            </asp:TableCell>
                            <asp:TableCell class="style2">
                            <asp:Label ID="lblNamedisplay" runat="server" Text="" Visible="False"></asp:Label>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                        <asp:TableCell class="style1" align="center">
                            <asp:Button ID="btnConfirm" runat="server" Text="Confirm" Width="80px" 
                                style="margin-left: 16px" BackColor="Maroon" CssClass="style10" 
                                Font-Bold="True" ForeColor="White" />
                        </asp:TableCell>
                        <asp:TableCell class="style1">
                            <asp:Button ID="btnReject" runat="server" Text="Reject" Width="80px" 
                                style="margin-left: 16px" BackColor="Maroon" Font-Bold="True" 
                                ForeColor="White" />
                        </asp:TableCell>
                        </asp:TableRow>
                    </asp:Table>
           
       
  </asp:TableCell>
</asp:TableRow>                   
</asp:Table>			
</asp:Content>
