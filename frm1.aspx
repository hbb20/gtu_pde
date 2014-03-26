<%@ Page Language="C#"  MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeFile="frm1.aspx.cs" Inherits="frm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
       <style type="text/css">
         .content{
    background: #FFFFFF;
    text-align:left;
    position:relative;
    top:30px;
    right:100px;
        }

        </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div class='content'>

<table width="400px" height="700px">
<tr>
<td>
<form id="form1s" method="post" runat="server" >
<asp:Panel ID="Panel1" runat="server" style="padding: 1px 4px; z-index: 1; left: 336px; top: 3px; position: relative; height: 667px; width: 400px">
    <asp:gridview ID="Gridview1" runat="server" OnRowDeleting="OnRowDeleting" ShowFooter="True" 
        AutoGenerateColumns="False" >
        <Columns>
        <asp:BoundField DataField="RowNumber" HeaderText="Row Number" />
        <asp:TemplateField HeaderText="FullName">
            <ItemTemplate>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Nationality">
            <ItemTemplate>
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </ItemTemplate>
        </asp:TemplateField>
		<asp:TemplateField HeaderText="Address">
            <ItemTemplate>
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            </ItemTemplate>
        </asp:TemplateField>
		<asp:TemplateField HeaderText="EmailId">
            <ItemTemplate>
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            </ItemTemplate>
        </asp:TemplateField>
		
        <asp:TemplateField HeaderText="ContactNo.">
            <ItemTemplate>
                 <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
            </ItemTemplate>
            <FooterStyle HorizontalAlign="Right" />
            <FooterTemplate>
             <asp:Button ID="ButtonAdd" runat="server" Text="Add New Row" OnClick="Adrow_click"/>
            </FooterTemplate>
        </asp:TemplateField>
              <asp:CommandField ShowDeleteButton="True" />
        </Columns>
</asp:gridview>
</td>
</tr>
    </asp:Panel>
  
   </form>

   </table>
  </div>
</asp:content>





