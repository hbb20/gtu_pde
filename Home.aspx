<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="gtu_pde.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    </asp:Content>
<%--right-side--%>




<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form runat="server">
<asp:Table ID="Table1" runat="server">
<asp:TableRow>
<asp:TableCell Width="50%">

    <asp:Panel ID="Panel1" runat="server" style="width:500px; height: 228px; margin-left:20px;" bgcolor="White" class="content_box">
    </asp:Panel>
           </asp:TableCell>   

<asp:TableCell width="70%">
           
                
                    <asp:Table runat="server" style="width:575px; height:228px;" BackColor="White">

                     <asp:TableRow><asp:TableCell colspan="2" class="style12"><h2>Welcome To GTU</h2></asp:TableCell></asp:TableRow>
                        <asp:TableRow class="style9"  ForeColor="Black" style="font-weight:bold">
                            <asp:TableCell class="style7" align="left">
                                <asp:Label ID="lblTeamidfix" runat="server" Text="Team  Id" ></asp:Label>

                            </asp:TableCell>
                            <asp:TableCell class="style8"  ForeColor="Black" align="left"  style="font-weight:bold">
                                <asp:Label ID="lblTeamiddisplay" runat="server" Text="" Visible="False"></asp:Label>
                            </asp:TableCell>
                            </asp:TableRow>
                            <asp:TableRow class="style9"  ForeColor="Black" align="left"  style="font-weight:bold">
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
                            <asp:TableRow class="style9"  ForeColor="Black" align="left"  style="font-weight:bold">
                                <asp:TableCell class="style5">
                                <asp:Label ID="lblProjecttitlefix" runat="server" Text="Project Title"></asp:Label>

                                </asp:TableCell>
                                <asp:TableCell class="style6">
                                    <asp:Label ID="lblProjecttitledisplay" runat="server" Text="" Visible="False"></asp:Label>
                                </asp:TableCell>
                            </asp:TableRow>
                    </asp:Table>
           
       
  </asp:TableCell>
</asp:TableRow>                   
</asp:Table>	


</form>		
</asp:Content>
