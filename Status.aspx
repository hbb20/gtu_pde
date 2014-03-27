<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="Status.aspx.cs" Inherits="Status" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style1
    {
        height: 45px;
    }
</style>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id=frm1 runat="server">
    <table align="center" cellpadding="0" cellspacing="0"
            style="background-position: center center; width: 500px; background-repeat: repeat;" bgcolor="White">
            <tr>
            <td colspan="2" class="style1">
            <h2>
                    Status</h2></td></tr>
            <tr class="style1">
                <td align="left" height="40px" width="250px" 
                    style="padding-left: 100px; color: #000000;">
                    Enrollment no:&nbsp;</td>
                <td align="left" height="40px" style="padding-left: 10px; color: #000000;" 
                    width="250px">
                    &nbsp;&nbsp;
                    <asp:TextBox ID="txtEnrollno" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="left" height="40px" width="250px" style="padding-left: 100px" 
                    class="style1">
                    &nbsp;</td>
                <td align="left" height="40px" style="padding-left: 10px" width="250px">
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="center" colspan="2" height="40px" style="width: 500px" width="250px">
                    <asp:Button ID="btnshow" runat="server" Text="SHOW" Width="100px" 
                        BackColor="Maroon" ForeColor="White" BorderStyle="Groove" 
                        Font-Bold="True" />
                </td>
            </tr>
            
            <tr>
                <td align="right" height="30px" width="250px" colspan="2" style="width: 500px">
                    <asp:Panel ID="Panel1" runat="server" Visible="False">
                          <table align="center" cellpadding="0" cellspacing="0" style="width: 500px">
                        <tr class="style1">
                <td align="right" height="40px" width="250px">
                    &nbsp;</td>
                <td align="left" height="40px" style="padding-left: 10px" width="250px">
                    &nbsp;</td>
                        </tr>
                              <tr class="style1">
                                  <td align="left" height="40px" width="250px" 
                                      style="padding-left: 100px; color: #000000;">
                                      Team Id:</td>
                                  <td align="left" height="40px" style="padding-left: 10px" width="250px">
                                      <asp:TextBox ID="txtteamid" runat="server"></asp:TextBox>
                                  </td>
                              </tr>
                        <tr class="style1">
                <td align="left" height="40px" width="250px" style="padding-left: 100px">
                    <asp:Label ID="lblstatus" runat="server" Text="Status:" ForeColor="Black"></asp:Label>
                            </td>
                <td align="left" height="40px" style="padding-left: 10px" width="250px">
                    <asp:Label ID="lblstatusans" runat="server" Text="lblstatusans"></asp:Label>
                            </td>
                        </tr>
                        <tr class="style1">
                <td align="right" height="40px" width="250px">
                    &nbsp;</td>
                <td align="left" height="40px" style="padding-left: 10px" width="250px">
                    &nbsp;</td>
                        </tr>
                    </table></asp:Panel>
                </td>
            </tr>
            <tr>
                <td align="center" colspan="2" height="30px" style="width: 500px" width="250px">
                    &nbsp;</td>
            </tr>
        </table>
        </form>
</asp:Content>

