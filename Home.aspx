<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="gtu_pde.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        
        .position {
        position:relative;
        left:30;
        top:40;
        }

</style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form runat="server">
    <table style="margin-left:0px;background-color:white; Width:1000px;" >
    <tr>
    <td style="width:50%; height:200px;" valign="top">

    <table style="width:500px;margin-left:0px;margin-top:0px;">

    <tr>
    <td colspan="4">

        <asp:GridView ID="GridView1" runat="server" cellpadding="13" cellspacing="35">
           <Columns>

            <asp:TemplateField HeaderText="Status" >
              <ItemTemplate>
                <asp:LinkButton ID="btn1" runat="server" Text="Confirm  &nbsp&nbsp&nbsp" ></asp:LinkButton>
              
                <asp:LinkButton ID="btn2" runat="server" Text="Reject"></asp:LinkButton>
              </ItemTemplate>
            </asp:TemplateField>
            </Columns>            
        </asp:GridView>
    
    </td>
    
    
    </tr>


    </table>



    </td>
        <td style="width:50%; height:200px;" valign="top"  align="left">
        

        <table  style="position:relative;margin-left:40px;margin-top:140px; width:500px;">
        <tr>
        <td style="width:50%; height:50px;" align="left">

        <asp:Label ID="lblTm" runat="server" Text="Team ID  :"></asp:Label>

        </td>
        <td style="width:50%; height:50px;" align="left">

        <asp:Label ID="lblTeamId" runat="server" Text=""></asp:Label>
        </td>
        </tr>
        <tr>
        <td align="left" colspan="2">
            <asp:GridView ID="GridView2" runat="server">
            </asp:GridView>
        
        </td>
        </tr>
        </table>
            
           
            
        </td>
    </tr>
    </form>
    <table>


</form>		
</asp:Content>
