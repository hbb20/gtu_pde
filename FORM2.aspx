<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeFile="FORM2.aspx.cs" Inherits="gtu_pde.FORM3_2_" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
       
            
    .style1
    {
        color: #000000;
    }
       
            
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div style="padding-left:10px; margin-left: 0px;">

    <div>
        <form id="form2" action="" runat="server">
        <table  cellpadding="10px" cellspacing="10px" bgcolor="White" 
            style="border-style:solid;border-color:Black;width: 625px; margin-left: 0px; margin-right: 5px;">
       
        <tr>
            <td class="style1">
                <strong>1. TITLE OF THE PROJECT/INVENTION</strong></td>
           <td class="style7">
                <asp:Label ID="txtTitleproject" runat="server" Height="41px" 
                    style="margin-top: 0px" Width="286px" align="center" Visible="False" 
                    CssClass="style1"></asp:Label>
       
            </td>
        
        </tr>
        
        <tr>
            <td class="style1" colspan="2">
                <strong>2.</strong><b  class="b"> PREAMBLE TO THE DESCRIPTION</b>
            </td>
            
        </tr>
         <tr>
            <td class="style1" colspan="2">
            <b style="padding-left:50px"> PROVISIONAL</b>
            </td>
            
        </tr>
         <tr>
            <td class="style1" colspan="2">
                <strong>3</strong><b  class="b">. DESCRIPTION</b>
            </td>
            
        </tr>
        <tr>
            
            <td class="style9" style="padding-left:50px;">
                <asp:Label ID="lblFieldofapplication" runat="server" 
                    Text="a) Field of Project / Invention / Application :" CssClass="style1"></asp:Label>
            </td>
            <td class="style7">
                <asp:TextBox ID="txtFieldofapplication" runat="server" Text="" Width="286px" 
                    Height="150px" TextMode="MultiLine" CssClass="style1"></asp:TextBox>
                <br class="style1" />
       </td>   
       </tr>
       <tr>
           <td class="style8" style="padding-left:50px">
                <asp:Label ID="lblPriorart" runat="server" 
                    Text="b) Prior Art / Background of the Project / Invention :" CssClass="style1"></asp:Label>
            </td>
            <td class="style7">
                <asp:TextBox ID="txtPriorart" runat="server" Text="" Width="286px" 
                    Height="150px" TextMode="MultiLine" CssClass="style1"></asp:TextBox>
                <br class="style1" />
       </td>      
       </tr> 
       <tr>
           <td class="style8" style="padding-left:50px">
                <asp:Label ID="lblSummaryofproject" runat="server" 
                    Text="c) Summary of the Project / Invention :" CssClass="style1"></asp:Label>
            </td>
            <td class="style7">
                <asp:TextBox ID="txtSummaryofproject" runat="server" Text="" Width="286px" 
                    Height="150px" TextMode="MultiLine" CssClass="style1"></asp:TextBox>
                <br class="style1" />
       </td>      
       </tr> 
        <tr>
           <td class="style8" style="padding-left:50px">
                <asp:Label ID="lblObjectofproject" runat="server" 
                    Text="d) Objects of Project / Invention :" CssClass="style1"></asp:Label>
            </td>
            <td class="style7">
                <asp:TextBox ID="txtObjectofproject" runat="server" Text="" Width="286px" 
                    Height="100px" TextMode="MultiLine" CssClass="style1"></asp:TextBox>
                <br class="style1" />
       </td>      
       </tr> 
       <tr>
           <td class="style8" style="padding-left:50px">
                <asp:Label ID="lblDrawing" runat="server" Text="e) Drawings :" 
                    CssClass="style1"></asp:Label>
            </td>
            <td class="style7">
                <asp:FileUpload ID="fileuploaddrawing" runat="server" Width="288px" Height="30px"/>
       </td>      
       </tr> 
        <tr>
           <td class="style8" style="padding-left:50px">
                <asp:Label ID="lblDescriptionofproject" runat="server" 
                    Text="f) Description of Project / Invention : (full detail of project)" 
                    CssClass="style1"></asp:Label>
            </td>
            <td class="style7">
                <asp:TextBox ID="txtDescriptionofproject" runat="server" Text="" Height="150px" 
                    Width="286px" TextMode="MultiLine" CssClass="style1"></asp:TextBox>
                <br class="style1" />
       </td>      
       </tr> 
       <tr>
           <td class="style8" style="padding-left:50px">
                <asp:Label ID="lblExample" runat="server" Text="g) Examples :" 
                    CssClass="style1"></asp:Label>
            </td>
            <td class="style7">
                <asp:TextBox ID="txtExample" runat="server" Text="" Width="286px" 
                    Height="100px" TextMode="MultiLine" CssClass="style1"></asp:TextBox>
                <br class="style1" />
       </td>      
       </tr> 
        <tr>
           <td class="style8" style="padding-left:50px">
                <asp:Label ID="lblClaims" runat="server" 
                    Text="h) Claims (Not required for Provisional Application) / Unique Features of Project :" 
                    CssClass="style1"></asp:Label>
            </td>
            <td class="style7">
                <asp:TextBox ID="txtClaims" runat="server" Text="" Width="286px" Height="100px" 
                    TextMode="MultiLine" CssClass="style1"></asp:TextBox><br class="style1" />
       </td>      
       </tr> 
       <tr>
            <td class="style1" colspan="2">
                <strong>4</strong>.<b  class="b"> CLAIMS</b>
            </td>
            
        </tr>
        <tr>
            <td class="style1" colspan="2">
                <strong>5</strong><b  class="b">. DATE AND SIGNATURE</b>
            </td>
            
        </tr>
        <tr>
            <td class="style1">
                <strong>6</strong><b  class="b">. ABSTRACT OF THE PROJECT / INVENTION</b>
            </td>
             <td class="style7">
                <asp:TextBox ID="txtAbstractofproject" runat="server" Text="" Width="286px" 
                     Height="150px" TextMode="MultiLine" CssClass="style1"></asp:TextBox>
                 <br class="style1" />
       </td>      
        </tr>
        <tr>
            <td align="center" colspan="2">
                <asp:Button ID="btnSubmit" runat="server" Text="Submit" />
                    <asp:Button ID="btnReset" runat="server" Text="Reset" /></td>
        </tr>
        
        </table>
        </form>
 </div>

</div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    
</asp:Content>
