<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeFile="form1.aspx.cs" Inherits="gtu_pde.form1" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="StyleSheet.css" rel="stylesheet" type="text/css" />
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
        width: 21%;
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
        #frm1
    {
        width: 800px;
        margin-right: 89px;
    }
        .style27
        {
            width: 22%;
        }
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
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<<<<<<< HEAD
<form id="frm1" runat="server">
=======

    <form id="frm1" runat="server">
>>>>>>> a788329375d3d6b971fbf3153cce2313e5ab9261
<table class="style1" bgcolor="White">

        <tr>
            <td class="style34">
                <strong>1</strong>.</td>
            <td colspan="6" class="style21">
                <strong>APPLICANT(s):</strong></td>
        </tr>
        <tr>
            <td height="30" class="style33">
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
            <td height="30" class="style33">
                &nbsp;</td>
            <td class="style22" height="30">
                <asp:TextBox ID="txtApplicantfullname1" runat="server" placeholder="Name of Applicant1"  Height="24px" 
                    CssClass="txt_active"  Width="150px"></asp:TextBox>
            </td>
            <td height="30" class="style19">
                <asp:TextBox ID="txtApplicantNationality1" runat="server" placeholder="Nationality of Applicant1"  Height="22px" 
                    CssClass="txt_active"  Width="150px"></asp:TextBox>
            </td>
            <td width="12%" height="30">
                <asp:TextBox ID="txtApplicantaddress1" runat="server" placeholder="Address of Applicant1"  Height="22px" 
                   CssClass="txt_active"   Width="150px"></asp:TextBox>
            </td>
            <td colspan="2" width="19%" height="30">
                <asp:TextBox ID="txtApplicantemailid1" runat="server" placeholder="Email ID of Applicant1"  Height="22px" 
                   CssClass="txt_active"   Width="150px"></asp:TextBox>
            </td>
            <td height="30" class="style27">
                <asp:TextBox ID="txtApplicantcontactno1" runat="server" placeholder="Mobile of Applicant1"  Height="24px" 
                   CssClass="txt_active"   Width="150px"></asp:TextBox>
            </td>
          
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
<<<<<<< HEAD
            <td>
                <asp:Button ID="btn_add_row2" runat="server" Text="Add row" onclick="btn_add_row2_Click" 
                    />
=======
            <td colspan="2" width="19%" class="style21">
                <asp:TextBox ID="txtApplicantemailid2" runat="server"  placeholder="Email ID of Applicant2" Height="22px" 
                    Width="150px" ReadOnly="True"></asp:TextBox>
            </td>
            <td class="style37">
                <asp:TextBox ID="txtApplicantcontactno2" runat="server" placeholder="Mobile of Applicant2"  Height="24px" 
                    Width="150px" ReadOnly="True"></asp:TextBox>
>>>>>>> a788329375d3d6b971fbf3153cce2313e5ab9261
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
            </td>
        </tr>
        <tr>
            <td class="style34">
                <asp:CheckBox ID="chk_box_mem_4" runat="server" 
                    oncheckedchanged="chk_box_mem_4_CheckedChanged" AutoPostBack="True" />
            </td>
            <td class="style35">
                <asp:TextBox ID="txtapplicantfullname4" runat="server" placeholder="Name of Applicant4"  Height="24px" 
                    Width="150px" ReadOnly="True" BackColor="White" ForeColor="Black"></asp:TextBox>
            </td>
            <td class="style36">
                <asp:TextBox ID="txtApplicantNationality4" runat="server" placeholder="Nationality of Applicant4" Height="22px" 
                    Width="150px" ReadOnly="True"></asp:TextBox>
            </td>
            <td width="12%" class="style21">
                <asp:TextBox ID="txtApplicantaddress4" runat="server" placeholder="Address of Applicant4"  Height="22px" 
                    Width="150px"></asp:TextBox>
            </td>
            <td colspan="2" width="19%" class="style21">
                <asp:TextBox ID="txtApplicantemailid4" runat="server"  placeholder="Email ID of Applicant4" Height="22px" 
                    Width="150px" ReadOnly="True"></asp:TextBox>
            </td>
            <td class="style37">
                <asp:TextBox ID="txtApplicantcontactno4" runat="server" placeholder="Mobile of Applicant4"  Height="24px" 
                    Width="150px" ReadOnly="True"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style34">
                <asp:CheckBox ID="chk_box_mem_5" runat="server" 
                    oncheckedchanged="chk_box_mem_5_CheckedChanged" AutoPostBack="True" />
            </td>
            <td class="style35">
                <asp:TextBox ID="txtapplicantfullname5" runat="server" placeholder="Name of Applicant5"  Height="24px" 
                    Width="150px" ReadOnly="True" BackColor="White" ForeColor="Black"></asp:TextBox>
            </td>
            <td class="style36">
                <asp:TextBox ID="txtApplicantNationality5" runat="server" placeholder="Nationality of Applicant5" Height="22px" 
                    Width="150px" ReadOnly="True"></asp:TextBox>
            </td>
            <td width="12%" class="style21">
                <asp:TextBox ID="txtApplicantaddress5" runat="server" placeholder="Address of Applicant5"  Height="22px" 
                    Width="150px"></asp:TextBox>
            </td>
            <td colspan="2" width="19%" class="style21">
                <asp:TextBox ID="txtApplicantemailid5" runat="server"  placeholder="Email ID of Applicant5" Height="22px" 
                    Width="150px" ReadOnly="True"></asp:TextBox>
            </td>
            <td class="style37">
                <asp:TextBox ID="txtApplicantcontactno5" runat="server" placeholder="Mobile of Applicant5"  Height="24px" 
                    Width="150px" ReadOnly="True"></asp:TextBox>
            </td>
        </tr>

      

        <tr>
            <td class="style2" colspan="7" height="30">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5" height="30">
                2.</td>
            <td class="style6" colspan="6" height="30">
                <b>INVENTOR(s):</b></td>
        </tr>
        <tr>
            <td height="30" class="style33">
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
            <td height="30" class="style33">
                &nbsp;</td>
            <td class="style22" height="30">
                <asp:TextBox ID="txtInventorfullname1" runat="server" 
                    placeholder="Name of Inventor1"  Height="24px" 
                    Width="150px" CssClass="txt_active"></asp:TextBox>
            </td>
            <td height="30" class="style19">
                <asp:TextBox ID="txtInventorNationality1" runat="server" placeholder="Nationality of Inventor1"  Height="22px" 
                    CssClass="txt_active" Width="150px"></asp:TextBox>
            </td>
            <td width="12%" height="30">
                <asp:TextBox ID="txtInventoraddress1" runat="server" placeholder="Address of Inventor1"  Height="22px" 
                     CssClass="txt_active" Width="150px"></asp:TextBox>
            </td>
            <td colspan="2" width="19%" height="30">
                <asp:TextBox ID="txtInventoremailid1" runat="server" placeholder="Email ID of Inventor1"  Height="22px" 
                     CssClass="txt_active" Width="150px"></asp:TextBox>
            </td>
            <td height="30" class="style27">
                <asp:TextBox ID="txtInventorcontactno1" runat="server" placeholder="Mobile of Inventor1"  Height="24px" 
                     CssClass="txt_active" Width="150px"></asp:TextBox>
            </td>
         
        </tr>
        <tr>
            <td class="style34">
                <asp:CheckBox ID="chk_box_Inventor_2" runat="server" 
                    oncheckedchanged="chk_box_Inventor_2_CheckedChanged" AutoPostBack="True" />
            </td>
            <td class="style35">
                <asp:TextBox ID="txtInventorfullname2" runat="server" placeholder="Name of Inventor2"  Height="24px" 
                    Width="150px" ReadOnly="True" BackColor="White" ForeColor="Black"></asp:TextBox>
            </td>
            <td class="style36">
                <asp:TextBox ID="txtInventorNationality2" runat="server" placeholder="Nationality of Inventor2" Height="22px" 
                    Width="150px" ReadOnly="True"></asp:TextBox>
            </td>
            <td width="12%" class="style21">
                <asp:TextBox ID="txtInventoraddress2" runat="server" placeholder="Address of Inventor2"  Height="22px" 
                    Width="150px"></asp:TextBox>
            </td>
            <td colspan="2" width="19%" class="style21">
                <asp:TextBox ID="txtInventoremailid2" runat="server"  placeholder="Email ID of Inventor2" Height="22px" 
                    Width="150px" ReadOnly="True"></asp:TextBox>
            </td>
            <td class="style37">
                <asp:TextBox ID="txtInventorcontactno2" runat="server" placeholder="Mobile of Inventor2"  Height="24px" 
                    Width="150px" ReadOnly="True"></asp:TextBox>
            </td>
        </tr>


        <tr>
            <td class="style34">
                <asp:CheckBox ID="chk_box_Inventor_3" runat="server" 
                    oncheckedchanged="chk_box_Inventor_3_CheckedChanged" AutoPostBack="True" />
            </td>
            <td class="style35">
                <asp:TextBox ID="txtInventorfullname3" runat="server" placeholder="Name of Inventor3"  Height="24px" 
                    Width="150px" ReadOnly="True" BackColor="White" ForeColor="Black"></asp:TextBox>
            </td>
            <td class="style36">
                <asp:TextBox ID="txtInventorNationality3" runat="server" placeholder="Nationality of Inventor3" Height="22px" 
                    Width="150px" ReadOnly="True"></asp:TextBox>
            </td>
            <td width="12%" class="style21">
                <asp:TextBox ID="txtInventoraddress3" runat="server" placeholder="Address of Inventor3"  Height="22px" 
                    Width="150px"></asp:TextBox>
            </td>
            <td colspan="2" width="19%" class="style21">
                <asp:TextBox ID="txtInventoremailid3" runat="server"  placeholder="Email ID of Inventor3" Height="22px" 
                    Width="150px" ReadOnly="True"></asp:TextBox>
            </td>
            <td class="style37">
                <asp:TextBox ID="txtInventorcontactno3" runat="server" placeholder="Mobile of Inventor3"  Height="24px" 
                    Width="150px" ReadOnly="True"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style34">
                <asp:CheckBox ID="chk_box_Inventor_4" runat="server" 
                    oncheckedchanged="chk_box_Inventor_4_CheckedChanged" AutoPostBack="True" />
            </td>
            <td class="style35">
                <asp:TextBox ID="txtInventorfullname4" runat="server" placeholder="Name of Inventor4"  Height="24px" 
                    Width="150px" ReadOnly="True" BackColor="White" ForeColor="Black"></asp:TextBox>
            </td>
            <td class="style36">
                <asp:TextBox ID="txtInventorNationality4" runat="server" placeholder="Nationality of Inventor4" Height="22px" 
                    Width="150px" ReadOnly="True"></asp:TextBox>
            </td>
            <td width="12%" class="style21">
                <asp:TextBox ID="txtInventoraddress4" runat="server" placeholder="Address of Inventor4"  Height="22px" 
                    Width="150px"></asp:TextBox>
            </td>
            <td colspan="2" width="19%" class="style21">
                <asp:TextBox ID="txtInventoremailid4" runat="server"  placeholder="Email ID of Inventor4" Height="22px" 
                    Width="150px" ReadOnly="True"></asp:TextBox>
            </td>
            <td class="style37">
                <asp:TextBox ID="txtInventorcontactno4" runat="server" placeholder="Mobile of Inventor4"  Height="24px" 
                    Width="150px" ReadOnly="True"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style34">
                <asp:CheckBox ID="chk_box_Inventor_5" runat="server" 
                    oncheckedchanged="chk_box_Inventor_5_CheckedChanged" AutoPostBack="True" />
            </td>
            <td class="style35">
                <asp:TextBox ID="txtInventorfullname5" runat="server" placeholder="Name of Inventor5"  Height="24px" 
                    Width="150px" ReadOnly="True" BackColor="White" ForeColor="Black"></asp:TextBox>
            </td>
            <td class="style36">
                <asp:TextBox ID="txtInventorNationality5" runat="server" placeholder="Nationality of Inventor5" Height="22px" 
                    Width="150px" ReadOnly="True"></asp:TextBox>
            </td>
            <td width="12%" class="style21">
                <asp:TextBox ID="txtInventoraddress5" runat="server" placeholder="Address of Inventor5"  Height="22px" 
                    Width="150px"></asp:TextBox>
            </td>
            <td colspan="2" width="19%" class="style21">
                <asp:TextBox ID="txtInventoremailid5" runat="server"  placeholder="Email ID of Inventor5" Height="22px" 
                    Width="150px" ReadOnly="True"></asp:TextBox>
            </td>
            <td class="style37">
                <asp:TextBox ID="txtInventorcontactno5" runat="server" placeholder="Mobile of Inventor5"  Height="24px" 
                    Width="150px" ReadOnly="True"></asp:TextBox>
            </td>
        </tr>

        <tr>
            <td class="style2" colspan="7" height="30">
                &nbsp;</td>
        </tr>
        <tr>
            <td height="30" class="style33">
                <strong>3.</strong></td>
            <td colspan="2" height="30">
                <b>TITLE OF INVENTION/PROJECT: </b>
            </td>
            <td colspan="4">
                <asp:TextBox ID="txtTitleinvention" runat="server" CssClass="style4 txt_active" Height="22px" 
                      Width="200px"></asp:TextBox>
            </td>
            </tr>
        <tr>
            <td class="style2" colspan="7" height="30">
                &nbsp;</td>
            </tr>
        <tr>
            <td rowspan="6" class="style33">
                <strong>4.</strong></td>
            <td align="right" colspan="2" rowspan="6">
                <b style="text-align: center">ADDRESS FOR<br />
                CORRESPONDENCE
                OF<br />
                APPLICANT/AUTHORIZED
                <br />
                PATENT AGENT IN INDIA:</b></td>
            <td align="right" colspan="2" class="style17" width="12%">
                Name:</td>
            <td colspan="2" class="style18">
                <asp:TextBox ID="txtCorrespondencename" runat="server" Height="24px" 
                    CssClass="txt_active"  Width="150px"></asp:TextBox>
            </td>
            </tr>
        <tr>
            <td align="right"  colspan="2" class="style16" width="12%">
                Address:</td>
            <td colspan="2" class="style14">
                <asp:TextBox ID="txtCorrespondenceaddress" runat="server" Height="81px" Width="147px" 
                   CssClass="txt_area_active"   TextMode="MultiLine"></asp:TextBox>
            </td>
            </tr>
        <tr>
            <td align="right"  colspan="2" height="30" class="style15" width="12%">
                Telephone No:</td>
            <td colspan="2" height="30">
                <asp:TextBox ID="txtCorrespondencetelephoneno" runat="server" Height="24px" 
                   CssClass="txt_active"   Width="150px"></asp:TextBox>
            </td>
            </tr>
        <tr>
            <td align="right"  colspan="2" height="30" class="style15" width="12%">
                Fax No.</td>
            <td colspan="2" height="30">
                <asp:TextBox ID="txtCorrespondencefaxno" runat="server" Height="24px" 
                   CssClass="txt_active"   Width="150px"></asp:TextBox>
            </td>
            </tr>
        <tr>
            <td align="right"  colspan="2" height="30" class="style15" width="12%">
                Mobile No:</td>
            <td colspan="2" height="30">
                <asp:TextBox ID="txtCorrespondencemobileno" runat="server" Height="22px" 
                  CssClass="txt_active"    Width="150px"></asp:TextBox>
            </td>
            </tr>
        <tr>
            <td  align="right" colspan="2" height="30" class="style15" width="12%">
                Email Id:</td>
            <td colspan="2" height="30">
                <asp:TextBox ID="txtCorrespondenceemailid" runat="server" Height="22px" 
                  CssClass="txt_active"    Width="150px"></asp:TextBox>
            </td>
            </tr>
        <tr>
            <td class="style2" colspan="7" height="30">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style29">
                <strong>5.</strong></td>
            <td colspan="6" style="font-weight: 700" class="style26">
                PRIORITY PRETICULARS OF THE APPLICATIONS FIELD IN CONVENTION COUNTRY:</td>
        </tr>
        <tr>
            <td height="30" class="style33">
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
            <td height="30" class="style33">
                &nbsp;</td>
            <td class="style22" height="30">
                <asp:TextBox ID="txt5_country" runat="server"  CssClass="txt_active" Height="24px" Width="150px"></asp:TextBox>
            </td>
            <td height="30" class="style19">
                <asp:TextBox ID="txt5_Applicationno" runat="server" CssClass="txt_active"  Height="24px" Width="150px"></asp:TextBox>
            </td>
            <td height="30" width="12%">
                <asp:TextBox ID="txt5_fillingdate" runat="server" CssClass="txt_active"  Height="24px" Width="150px"></asp:TextBox>
            </td>
            <td colspan="2" height="30">
                <asp:TextBox ID="txt5_nameofapplicant" runat="server" Height="24px" 
                    CssClass="txt_active"  Width="150px"></asp:TextBox>
            </td>
            <td height="30" class="style27">
                <asp:TextBox ID="txt5_titleofinvention" runat="server" Height="24px" 
                   CssClass="txt_active"   Width="114px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td height="30" class="style33">
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
            <td class="style34">
                <strong>6.</strong></td>
            <td colspan="6" class="style21">
                <strong>PERTICULARS FOR FILLING PATENT COOPERATION TREATY(PCT) NATIONAL PHASE 
                APPLICATION:</strong></td>
        </tr>
        <tr>
            <td height="30" class="style33">
                &nbsp;</td>
            <td colspan="2" height="30">
                International application number</td>
            <td colspan="4" height="30">
                International filing date as allocated by the receiving office</td>
        </tr>
        <tr>
            <td height="30" class="style33">
                &nbsp;</td>
            <td colspan="2" height="30">
                <asp:TextBox ID="txt6_Internationalno" runat="server" Height="24px" 
                    CssClass="txt_active"  Width="114px"></asp:TextBox>
            </td>
            <td colspan="4" height="30">
                <asp:TextBox ID="txt6_internationalfillingdate" runat="server" Height="24px" 
 CssClass="txt_active" Width="114px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style34">
                </td>
            <td colspan="6" class="style21">
                </td>
        </tr>
        <tr>
            <td class="style34">
                <strong>7.</strong></td>
            <td colspan="6" class="style21">
                <strong>PARTICULARS FOR FILING&nbsp; DIVISIONAL APPLICATION:</strong></td>
        </tr>
        <tr>
            <td class="style31" height="30">
                </td>
            <td class="style7" colspan="2" height="30">
                Original(first) application number</td>
            <td class="style7" colspan="4" height="30">
                Date of filing of Original(first) application </td>
        </tr>
        <tr>
            <td height="30" class="style33">
                &nbsp;</td>
            <td colspan="2" height="30">
                <asp:TextBox ID="txt7_originalno" CssClass="txt_active"  runat="server" Height="24px" Width="114px"></asp:TextBox>
            </td>
            <td colspan="4" height="30">
                <asp:TextBox ID="txt6_dateoffilling" CssClass="txt_active"  runat="server" Height="24px" Width="114px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td height="30" class="style33">
                &nbsp;</td>
            <td colspan="6" height="30">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style34">
                <strong>8.</strong></td>
            <td colspan="6" class="style21">
                <strong>PARTICULARS FOR FILING PATENT OF APPLICATION:</strong></td>
        </tr>
        <tr>
            <td class="style34">
                </td>
            <td colspan="2" class="style21">
                Main application/ Patent Number</td>
            <td colspan="4" class="style21">
                Date of filing of main application </td>
        </tr>
        <tr>
            <td height="30" class="style33">
                &nbsp;</td>
            <td colspan="2" height="30">
                <asp:TextBox ID="txt8_mainapplication"  CssClass="txt_active" runat="server" Height="24px" 
                    Width="114px"></asp:TextBox>
            </td>
            <td colspan="4" height="30">
                <asp:TextBox ID="txt8_dateoffilling"  CssClass="txt_active" runat="server" Height="24px" Width="114px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style32">
                </td>
            <td colspan="6" class="style24">
                <asp:Button ID="btn_next_form" align="center"  runat="server" onclick="btn_next_form_Click" 
                    Text="Go to Next Half" />
                </td>
        </tr>  
    
    </table>
   
    </form>
<<<<<<< HEAD
   
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

=======
>>>>>>> a788329375d3d6b971fbf3153cce2313e5ab9261
   
</asp:Content>

