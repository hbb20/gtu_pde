﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="form1.aspx.cs" Inherits="gtu_pde.form1" %>

<script runat="server">

    protected void btn_add_row2_Click(object sender, EventArgs e)
    {
        txtApplicantaddress2.Visible = true;
        txtApplicantNationality2.Visible = true;
        txtapplicantfullname2.Visible = true;
        txtcontactno2.Visible = true;
        txtemailid2.Visible = true;
    }
</script>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style1
        {
            width: 100%;
            color: #000000;
            height: 700px;
        }
        .style2
        {
        }
        .style5
        {
            font-weight: bold;
            height: 27px;
        }
        .style6
        {
            height: 27px;
        }
        .style7
        {
            height: 26px;
        }
        .style4
        {
            font-weight: bold;
        }
        .style14
        {
            width: 23%;
            height: 94px;
        }
        .style15
        {
            width: 20%;
        }
        .style16
        {
            width: 20%;
            height: 94px;
        }
        .style17
        {
            width: 20%;
            height: 30px;
        }
        .style18
        {
            width: 23%;
            height: 30px;
        }
        .style19
        {
            width: 12%;
        }
        .style21
        {
            height: 30px;
        }
        .style22
        {
            text-align: justify;
            width: 12%;
        }
        .style24
        {
            height:5%;
        }
        .style26
    {
        height: 31px;
    }
        #form1
    {
        width: 800px;
        margin-right: 89px;
    }
        .style27
        {
            width: 22%;
        }
<<<<<<< HEAD
        .style29
    {
        height: 31px;
        width: 21%;
    }
    .style31
    {
        height: 26px;
        width: 21%;
    }
    .style32
    {
        height: 5%;
        width: 21%;
    }
        .style33
        {
            width: 21%;
        }
        .style34
        {
            width: 21%;
            height: 30px;
        }
        .style35
        {
            text-align: justify;
            width: 12%;
            height: 30px;
        }
        .style36
        {
            width: 12%;
            height: 30px;
        }
        .style37
        {
            width: 22%;
            height: 30px;
        }
        .style38
        {
            width: 8px;
        }
=======
>>>>>>> 488ced1386637b0ae4b8ae598cc2b9692dd6beb3
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
<table class="style1" bgcolor="White">
        <tr>
            <td height="30" width="5%">
                <strong>1</strong>.</td>
            <td colspan="6" height="30">
                <strong>APPLICANT(s):</strong></td>
        </tr>
        <tr>
            <td height="30" width="5%">
                &nbsp;</td>
            <td class="style22" height="30">
                FullName</td>
            <td height="30" class="style19">
                Nationality</td>
            <td width="12%" height="30">
                Addresss</td>
            <td colspan="2" width="12%" height="30">
                EmailId</td>
            <td height="30" class="style27">
                ContactNo.</td>
        </tr>
        <tr>
            <td height="30" width="5%">
                &nbsp;</td>
            <td class="style22" height="30">
                <asp:TextBox ID="txtApplicantfullname1" runat="server" Height="24px" 
                    Width="150px"></asp:TextBox>
            </td>
            <td height="30" class="style19">
                <asp:TextBox ID="txtApplicantNationality1" runat="server" Height="22px" 
                    Width="150px"></asp:TextBox>
            </td>
            <td width="12%" height="30">
                <asp:TextBox ID="txtApplicantaddress1" runat="server" Height="22px" 
                    Width="150px"></asp:TextBox>
            </td>
            <td colspan="2" width="19%" height="30">
                <asp:TextBox ID="txtemailid1" runat="server" Height="22px" Width="150px"></asp:TextBox>
            </td>
            <td height="30" class="style27">
                <asp:TextBox ID="txtcontactno1" runat="server" Height="24px" Width="150px"></asp:TextBox>
            </td>
<<<<<<< HEAD
          
        </tr>
        <tr>
            <td class="style34">
                <asp:CheckBox ID="chk_box_mem_2" runat="server" 
                    oncheckedchanged="chk_box_mem_2_CheckedChanged" AutoPostBack="True" />
            </td>
            <td class="style35">
                <asp:TextBox ID="txtapplicantfullname2" runat="server" placeholder="Name of Applicant2"  Height="24px" 
                    Width="150px" ReadOnly="True" BackColor="White" ForeColor="Black"></asp:TextBox>
            </td>
            <td class="style36">
                <asp:TextBox ID="txtApplicantNationality2" runat="server" placeholder="Nationality of Applicant2" Height="22px" 
                    Width="150px" ReadOnly="True"></asp:TextBox>
            </td>
            <td width="12%" class="style21">
                <asp:TextBox ID="txtApplicantaddress2" runat="server" placeholder="Address of Applicant2"  Height="22px" 
                    Width="150px"></asp:TextBox>
            </td>

                
            <td colspan="2" width="19%" class="style21">
                <asp:TextBox ID="txtApplicantemailid2" runat="server"  placeholder="Email ID of Applicant2" Height="22px" 
                    Width="150px" ReadOnly="True"></asp:TextBox>
            </td>
            <td class="style37">
                <asp:TextBox ID="txtApplicantcontactno2" runat="server" placeholder="Mobile of Applicant2"  Height="24px" 
                    Width="150px" ReadOnly="True"></asp:TextBox>

            </td>
        </tr>


        <tr>
            <td class="style34">
                <asp:CheckBox ID="chk_box_mem_3" runat="server" 
                    oncheckedchanged="chk_box_mem_3_CheckedChanged" AutoPostBack="True" />
            </td>
            <td class="style35">
                <asp:TextBox ID="txtapplicantfullname3" runat="server" placeholder="Name of Applicant3"  Height="24px" 
                    Width="150px" ReadOnly="True" BackColor="White" ForeColor="Black"></asp:TextBox>
            </td>
            <td class="style36">
                <asp:TextBox ID="txtApplicantNationality3" runat="server" placeholder="Nationality of Applicant3" Height="22px" 
                    Width="150px" ReadOnly="True"></asp:TextBox>
            </td>
            <td width="12%" class="style21">
                <asp:TextBox ID="txtApplicantaddress3" runat="server" placeholder="Address of Applicant3"  Height="22px" 
                    Width="150px"></asp:TextBox>
            </td>
            <td colspan="2" width="19%" class="style21">
                <asp:TextBox ID="txtApplicantemailid3" runat="server"  placeholder="Email ID of Applicant3" Height="22px" 
                    Width="150px" ReadOnly="True"></asp:TextBox>
            </td>
            <td class="style37">
                <asp:TextBox ID="txtApplicantcontactno3" runat="server" placeholder="Mobile of Applicant3"  Height="24px" 
                    Width="150px" ReadOnly="True"></asp:TextBox>
=======
            <td>
                <asp:Button ID="btn_add_row2" runat="server" Text="Add row" 
                    onclick="btn_add_row2_Click" />
>>>>>>> 488ced1386637b0ae4b8ae598cc2b9692dd6beb3
            </td>
        </tr>
        <tr>
            <td colspan="7">
                </td>
        </tr>
        <tr>
            <td height="30" width="5%">
                &nbsp;</td>
            <td class="style22" height="30">
                <asp:TextBox ID="txtapplicantfullname2" runat="server" Height="24px" 
                    Width="150px" Visible="False"></asp:TextBox>
            </td>
            <td height="30" class="style19">
                <asp:TextBox ID="txtApplicantNationality2" runat="server" Height="22px" 
                    Width="150px" Visible="False"></asp:TextBox>
            </td>
            <td width="12%" height="30">
                <asp:TextBox ID="txtApplicantaddress2" runat="server" Height="22px" 
                    Width="150px" Visible="False"></asp:TextBox>
            </td>
            <td colspan="2" width="19%" height="30">
                <asp:TextBox ID="txtemailid2" runat="server" Height="22px" Width="150px" 
                    Visible="False"></asp:TextBox>
            </td>
            <td height="30" class="style27">
                <asp:TextBox ID="txtcontactno2" runat="server" Height="24px" Width="150px" 
                    Visible="False"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style2" colspan="7" height="30">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5" height="30" width="5%">
                2.</td>
            <td class="style6" colspan="6" height="30">
                <b>INVENTOR(s):</b></td>
        </tr>
        <tr>
            <td height="30" width="5%">
                &nbsp;</td>
            <td class="style22" height="30">
                FullName</td>
            <td height="30" class="style19">
                Nationality</td>
            <td width="12%" height="30">
                Address</td>
            <td colspan="2" width="19%" height="30">
                EmailId</td>
            <td height="30" class="style27">
                ContactNo.</td>
        </tr>
        <tr>
            <td height="30" width="5%">
                &nbsp;</td>
            <td class="style22" height="30">
                <asp:TextBox ID="txtInventorfullname" runat="server" Height="22px" 
                    Width="150px"></asp:TextBox>
            </td>
            <td height="30" class="style19">
                <asp:TextBox ID="txtInventornationality" runat="server" Height="22px" 
                    Width="150px"></asp:TextBox>
            </td>
            <td width="12%" height="30">
                <asp:TextBox ID="txtInventoraddress" runat="server" Height="22px" Width="150px"></asp:TextBox>
            </td>
            <td colspan="2" width="19%" height="30">
                <asp:TextBox ID="txtInventoremailid" runat="server" Height="22px" Width="150px"></asp:TextBox>
            </td>
            <td height="30" class="style27">
                <asp:TextBox ID="txtInventorcontactno" runat="server" Height="22px" 
                    Width="150px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style2" colspan="7" height="30">
                &nbsp;</td>
        </tr>
        <tr>
            <td height="30" width="5%">
                <strong>3.</strong></td>
            <td colspan="2" height="30">
                <b>TITLE OF INVENTION/PROJECT: </b>
            </td>
            <td colspan="4">
                <asp:TextBox ID="txtTitleinvention" runat="server" CssClass="style4" Height="22px" 
                    Width="200px"></asp:TextBox>
            </td>
            </tr>
        <tr>
            <td class="style2" colspan="7" height="30">
                &nbsp;</td>
            </tr>
        <tr>
            <td rowspan="6" width="5%">
                <strong>4.</strong></td>
            <td colspan="2" rowspan="6">
                <b style="text-align: center">ADDRESS FOR<br />
                CORRESPONDENCE
                OF<br />
                APPLICANT/AUTHORIZED
                <br />
                PATENT AGENT IN INDIA:</b></td>
<<<<<<< HEAD
            <td align="right" colspan="2" class="style17">
=======
            <td colspan="2" class="style17" width="12%">
>>>>>>> 488ced1386637b0ae4b8ae598cc2b9692dd6beb3
                Name:</td>
            <td colspan="2" class="style18">
                <asp:TextBox ID="txtCorrespondencename" runat="server" Height="24px" 
                    Width="150px"></asp:TextBox>
            </td>
            </tr>
        <tr>
<<<<<<< HEAD
            <td align="right"  colspan="2" class="style16">
=======
            <td colspan="2" class="style16" width="12%">
>>>>>>> 488ced1386637b0ae4b8ae598cc2b9692dd6beb3
                Address:</td>
            <td colspan="2" class="style14">
                <asp:TextBox ID="txtCorrespondenceaddress" runat="server" Height="81px" Width="147px" 
                    TextMode="MultiLine"></asp:TextBox>
            </td>
            </tr>
        <tr>
<<<<<<< HEAD
            <td align="right"  colspan="2" height="30" class="style15">
=======
            <td colspan="2" height="30" class="style15" width="12%">
>>>>>>> 488ced1386637b0ae4b8ae598cc2b9692dd6beb3
                Telephone No:</td>
            <td colspan="2" height="30">
                <asp:TextBox ID="txtCorrespondencetelephoneno" runat="server" Height="24px" 
                    Width="150px"></asp:TextBox>
            </td>
            </tr>
        <tr>
<<<<<<< HEAD
            <td align="right"  colspan="2" height="30" class="style15">
=======
            <td colspan="2" height="30" class="style15" width="12%">
>>>>>>> 488ced1386637b0ae4b8ae598cc2b9692dd6beb3
                Fax No.</td>
            <td colspan="2" height="30">
                <asp:TextBox ID="txtCorrespondencefaxno" runat="server" Height="24px" 
                    Width="150px"></asp:TextBox>
            </td>
            </tr>
        <tr>
<<<<<<< HEAD
            <td align="right"  colspan="2" height="30" class="style15">
=======
            <td colspan="2" height="30" class="style15" width="12%">
>>>>>>> 488ced1386637b0ae4b8ae598cc2b9692dd6beb3
                Mobile No:</td>
            <td colspan="2" height="30">
                <asp:TextBox ID="txtCorrespondencemobileno" runat="server" Height="22px" 
                    Width="150px"></asp:TextBox>
            </td>
            </tr>
        <tr>
<<<<<<< HEAD
            <td  align="right" colspan="2" height="30" class="style15">
=======
            <td colspan="2" height="30" class="style15" width="12%">
>>>>>>> 488ced1386637b0ae4b8ae598cc2b9692dd6beb3
                Email Id:</td>
            <td colspan="2" height="30">
                <asp:TextBox ID="txtCorrespondenceemailid" runat="server" Height="22px" 
                    Width="150px"></asp:TextBox>
            </td>
            </tr>
        <tr>
            <td class="style2" colspan="7" height="30">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style26" width="5%">
                <strong>5.</strong></td>
            <td colspan="6" style="font-weight: 700" class="style26">
                PRIORITY PRETICULARS OF THE APPLICATIONS FIELD IN CONVENTION COUNTRY:</td>
        </tr>
        <tr>
            <td height="30" width="5%">
                &nbsp;</td>
            <td class="style22" height="30">
                Country</td>
            <td height="30" class="style19">
                Application No</td>
            <td height="30" width="12%">
                Filling&nbsp; Date</td>
            <td colspan="2" height="30">
                Name ofApplicant</td>
            <td height="30" class="style27">
                &nbsp;Title of Invention&nbsp;</td>
        </tr>
        <tr>
            <td height="30" width="5%">
                &nbsp;</td>
            <td class="style22" height="30">
                <asp:TextBox ID="txt5_country" runat="server" Height="24px" Width="150px"></asp:TextBox>
            </td>
            <td height="30" class="style19">
                <asp:TextBox ID="txt5_Applicationno" runat="server" Height="24px" Width="150px"></asp:TextBox>
            </td>
            <td height="30" width="12%">
                <asp:TextBox ID="txt5_fillingdate" runat="server" Height="24px" Width="150px"></asp:TextBox>
            </td>
            <td colspan="2" height="30">
                <asp:TextBox ID="txt5_nameofapplicant" runat="server" Height="24px" 
                    Width="150px"></asp:TextBox>
            </td>
            <td height="30" class="style27">
                <asp:TextBox ID="txt5_titleofinvention" runat="server" Height="24px" 
                    Width="114px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td height="30" width="5%">
                &nbsp;</td>
            <td class="style22" height="30">
                &nbsp;</td>
            <td height="30" class="style19">
                &nbsp;</td>
            <td height="30" width="12%">
                &nbsp;</td>
            <td colspan="2" height="30">
                &nbsp;</td>
            <td height="30" class="style27">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style21" width="5%">
                <strong>6.</strong></td>
            <td colspan="6" class="style21">
                <strong>PERTICULARS FOR FILLING PATENT COOPERATION TREATY(PCT) NATIONAL PHASE 
                APPLICATION:</strong></td>
        </tr>
        <tr>
            <td height="30" width="5%">
                &nbsp;</td>
            <td colspan="2" height="30">
                International application number</td>
            <td colspan="4" height="30">
                International filing date as allocated by the receiving office</td>
        </tr>
        <tr>
            <td height="30" width="5%">
                &nbsp;</td>
            <td colspan="2" height="30">
                <asp:TextBox ID="txt6_Internationalno" runat="server" Height="24px" 
                    Width="114px"></asp:TextBox>
            </td>
            <td colspan="4" height="30">
                <asp:TextBox ID="txt6_internationalfillingdate" runat="server" Height="24px" 
                    Width="114px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style21" width="5%">
                </td>
            <td colspan="6" class="style21">
                </td>
        </tr>
        <tr>
            <td class="style21" width="5%">
                <strong>7.</strong></td>
            <td colspan="6" class="style21">
                <strong>PARTICULARS FOR FILING&nbsp; DIVISIONAL APPLICATION:</strong></td>
        </tr>
        <tr>
            <td class="style7" height="30" width="5%">
                </td>
            <td class="style7" colspan="2" height="30">
                Original(first) application number</td>
            <td class="style7" colspan="4" height="30">
                Date of filing of Original(first) application </td>
        </tr>
        <tr>
            <td height="30" width="5%">
                &nbsp;</td>
            <td colspan="2" height="30">
                <asp:TextBox ID="txt7_originalno" runat="server" Height="24px" Width="114px"></asp:TextBox>
            </td>
            <td colspan="4" height="30">
                <asp:TextBox ID="txt6_dateoffilling" runat="server" Height="24px" Width="114px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td height="30" width="5%">
                &nbsp;</td>
            <td colspan="6" height="30">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style21" width="5%">
                <strong>8.</strong></td>
            <td colspan="6" class="style21">
                <strong>PARTICULARS FOR FILING PATENT OF APPLICATION:</strong></td>
        </tr>
        <tr>
            <td class="style21" width="5%">
                </td>
            <td colspan="2" class="style21">
                Main application/ Patent Number</td>
            <td colspan="4" class="style21">
                Date of filing of main application </td>
        </tr>
        <tr>
            <td height="30" width="5%">
                &nbsp;</td>
            <td colspan="2" height="30">
                <asp:TextBox ID="txt8_mainapplication" runat="server" Height="24px" 
                    Width="114px"></asp:TextBox>
            </td>
            <td colspan="4" height="30">
                <asp:TextBox ID="txt8_dateoffilling" runat="server" Height="24px" Width="114px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style24" width="5%">
                </td>
            <td colspan="6" class="style24">
                </td>
        </tr>
        
    </table>
    </form>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

   
</asp:Content>
