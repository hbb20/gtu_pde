<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeFile="FORM3.aspx.cs" Inherits="gtu_pde.FORM3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <style type="text/css">
        .style1
        {
            color: #000000;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 <form id="form1" runat="server">
    <div>
<table cellpadding="10px" cellspacing="10px" bgcolor="White" style="width: 627px">
            <tr>
               
                <td style="font-weight: 700" class="style1">Name of the applicant(s)</td>
                <td class="style1">I/We,<asp:Label ID="lblApplicant1" runat="server" Text=""></asp:Label><br />
                    <asp:Label ID="lblApplicant2" runat="server" Text=""></asp:Label><br />
                    <asp:Label ID="lblApplicant3" runat="server" Text=""></asp:Label><br />
                    hereby declare:
                </td>
            </tr>
            <tr>
               
                <td class="style1"><strong>Name,Address and Nationality of the joint applicant</strong></td>
                <td class="style1">(i)that I/We have not made anyapplication for <br />
                the same/substantially the same victim invention outside India.</td>
            </tr>
            <tr>
                
                <td class="style1"><strong>Name and Adddress of the assignee</strong></td>
                <td class="style1">(i)that the rights in the application(s) has/have<br /> been assigned to<asp:Label ID="Label1" runat="server" Text=""></asp:Label><br />
                    <asp:Label ID="Label2" runat="server" Text=""></asp:Label><br />
                    <asp:Label ID="Label3" runat="server" Text=""></asp:Label><br />
                    that I/We undertake that upto the date of grant<br /> of the patent by the Controller,
                     I/We would<br /> keep him informed in writing the details<br /> regarding corresponding applications for<br /> patents filed outside India
                     within three months<br /> from the date of filing of such application.<br />
                     Dated this........day of.........20......
                </td>
            </tr>
            <tr>
                <td class="style1"><strong>To be signed by the applicant or his <br />authorised registered patent agent</strong></td>
                <td class="style1">Signature.................</td>
            </tr>
            <tr>
                <td class="style1"><strong>Name of the Natural Person<br /> who has signed</strong></td>
                <td class="style1">(.......................)</td>
            </tr>
            <tr>
                
                <td></td>
                <td class="style1"><b>To<br />
                    </b>
                    <strong>The Controller of Patents,</strong><b><br />
                    The Patent Office,<br />
                    At Mumbai

                </b>

                </td>
            </tr>
        </table>
   
    </div>
    </form>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
   
</asp:Content>
