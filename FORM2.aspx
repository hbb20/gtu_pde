<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeFile="FORM2.aspx.cs" Inherits="gtu_pde.FORM3_2_" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
       
            
    .style1
    {
        color: #000000;
        text-align:left;
    }
       
            
        .style2
        {
            color: #800000;
        }
        .style3
        {
            color: #800000;
            text-align: left;
        }
        .style4
        {
            text-align: left;
        }
        .b
        {
            text-align: left;
        }
        .style5
        {
            color: #000000;
            text-align: left;
        }
       
            
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="padding-left:10px; margin-left: 0px;">

    <div>
        <form id="form2" runat="server">
        <table  cellpadding="10px" cellspacing="10px" bgcolor="White" 
            
            style="border-style:solid;border-color:Black;width: 708px; margin-left: 0px; margin-right: 5px;">
       
        <tr>
            <td class="style1">
               <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ErrorMessage="*" EnableClientScript="False" style="color: #FF0000; text-align: left;" 
                    ControlToValidate="txttitleofinvention"></asp:RequiredFieldValidator><strong>
                        <asp:Label ID="lbltitleofinvention" runat="server" 
                    Text="1. TITLE OF THE PROJECT/INVENTION" style="color: #800000"></asp:Label></strong></td>
           <td class="style7">
                <asp:TextBox ID="txttitleofinvention" runat="server" Width="286px" ></asp:TextBox>
       
            </td>
        
        </tr>
        
        <tr>
            <td class="style3" colspan="2">
                <span class="style2">
                <strong>2.</strong><b  class="b"> PREAMBLE TO THE DESCRIPTION</b></span>
            </td>
            
        </tr>
         <tr>
            <td align="center" class="style1" colspan="2">
            <b style="padding-left:50px"> PROVISIONAL</b>
            </td>
            
        </tr>
         <tr>
            <td class="style3" colspan="2">
                <span class="style2">
                <strong>3</strong><b  class="b">. DESCRIPTION</b></span>
            </td>
            
        </tr>
        <tr>
            
            <td class="style4" style="padding-left:50px;">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ErrorMessage="*" ControlToValidate="txtFieldofapplication" 
                    style="color: #FF0000"></asp:RequiredFieldValidator><asp:Label ID="lblFieldofapplication" runat="server" 
                    Text="a) Field of Project / Invention / Application :" CssClass="style1"></asp:Label>
            </td>
            <td class="style7">
                <asp:TextBox ID="txtFieldofapplication" runat="server" Text="" Width="286px" 
                    Height="150px" TextMode="MultiLine" CssClass="style1"></asp:TextBox>
                <br class="style1" />
       </td>   
       </tr>
       <tr>
           <td class="style4" style="padding-left:50px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ErrorMessage="*" ControlToValidate="txtPriorart" style="color: #FF0000"></asp:RequiredFieldValidator><asp:Label ID="lblPriorart" runat="server" 
                    Text="b) Prior Art / Background of the Project / Invention :" CssClass="style1"></asp:Label>
            </td>
            <td class="style7">
                <asp:TextBox ID="txtPriorart" runat="server" Text="" Width="286px" 
                    Height="150px" TextMode="MultiLine" CssClass="style1"></asp:TextBox>
                <br class="style1" />
       </td>      
       </tr> 
       <tr>
           <td class="style4" style="padding-left:50px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ErrorMessage="*" style="color: #FF0000" 
                    ControlToValidate="txtSummaryofproject"></asp:RequiredFieldValidator><asp:Label ID="lblSummaryofproject" runat="server" 
                    Text="c) Summary of the Project / Invention :" CssClass="style1"></asp:Label>
            </td>
            <td class="style7">
                <asp:TextBox ID="txtSummaryofproject" runat="server" Text="" Width="286px" 
                    Height="150px" TextMode="MultiLine" CssClass="style1"></asp:TextBox>
                <br class="style1" />
       </td>      
       </tr> 
        <tr>
           <td class="style4" style="padding-left:50px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ErrorMessage="*" style="color: #FF0000" 
                    ControlToValidate="txtObjectofproject"></asp:RequiredFieldValidator><asp:Label ID="lblObjectofproject" runat="server" 
                    Text="d) Objects of Project / Invention :" CssClass="style1"></asp:Label>
            </td>
            <td class="style7">
                <asp:TextBox ID="txtObjectofproject" runat="server" Text="" Width="286px" 
                    Height="100px" TextMode="MultiLine" CssClass="style1"></asp:TextBox>
                <br class="style1" />
       </td>      
       </tr> 
       <tr>
           <td class="style4" style="padding-left:50px">
                <asp:Label ID="lblDrawing" runat="server" Text="e) Drawings :" 
                    CssClass="style1"></asp:Label>
            </td>
            <td class="style7">
                <asp:FileUpload ID="fileuploaddrawing" runat="server" Width="288px" Height="30px"/>
       </td>      
       </tr> 
        <tr>
           <td class="style4" style="padding-left:50px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                    ErrorMessage="*" style="color: #FF0000" 
                    ControlToValidate="txtDescriptionofproject"></asp:RequiredFieldValidator><asp:Label ID="lblDescriptionofproject" runat="server" 
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
           <td class="style4" style="padding-left:50px">
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
           <td class="style4" style="padding-left:50px">
               <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                   ErrorMessage="*" style="color: #FF0000" ControlToValidate="txtClaims"></asp:RequiredFieldValidator><asp:Label ID="lblClaims" runat="server" 
                    Text="h) Claims (Not required for Provisional Application) / Unique Features of Project :" 
                    CssClass="style1"></asp:Label>
            </td>
            <td class="style7">
                <asp:TextBox ID="txtClaims" runat="server" Text="" Width="286px" Height="100px" 
                    TextMode="MultiLine" CssClass="style1"></asp:TextBox><br class="style1" />
       </td>      
       </tr> 
       <tr>
            <td class="style3" colspan="2">
                <strong>4</strong>.<b  class="b"> CLAIMS</b>
            </td>
            
        </tr>
        <tr>
            <td class="style5" colspan="2">
                <span class="style2">
                <strong>5</strong><b  class="b">. DATE AND SIGNATURE</b></span>
            </td>
            
        </tr>
        <tr>
            <td class="style3">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                    ErrorMessage="*" style="color: #FF0000" 
                    ControlToValidate="txtAbstractofproject"></asp:RequiredFieldValidator><strong>6</strong><b  class="b">. ABSTRACT OF THE PROJECT / INVENTION</b>
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
