<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeFile="form1.aspx.cs"  EnableViewState="false" Inherits="gtu_pde.form1" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="StyleSheet.css" rel="stylesheet" type="text/css" />
    
    <style type="text/css">
        .style1
        {
            
            width: 70%;
            color: #000000;
            padding-left:10px;
            padding-right:10px;
            height: 1215px;
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
            margin-left: 200px;
        }
        .style24
        {
            height:7%;
        }
        .style26
    {
        height: 31px;
            color: #800000;
        }
        #frm1
    {
        width: 800px;
        margin-right: 89px;
            margin-left: 135px;
            height: 1235px;
        }
        .style27
        {
            width: 22%;
        }
        .style29
    {
        height: 31px;
        width: 21%;
            color: #800000;
        }
    .style31
    {
        height: 26px;
        width: 21%;
    }
    .style32
    {
        height: 7%;
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
            width: 21%;
            height: 30px;
            color: #800000;
        }
        .style36
        {
            height: 30px;
            color: #800000;
        }
        .style37
        {
            color: #800000;
        }
        .style38
        {
            width: 21%;
            color: #800000;
        }
        .style39
        {
            color: #800000;
            text-align: left;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <form id="frm1" runat="server">
<table class="style1"  bgcolor="White" CssClass="txt_area_active">

        <tr>
            <td class="style35">
                <strong>1</strong>.</td>
            <td colspan="6" class="style36">
                <strong>APPLICANT(s):</strong></td>
        </tr>
        
        <%--<tr>
            <td height="30" class="style33">
                &nbsp;</td>
            <td class="style22" height="30">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ErrorMessage="*" ControlToValidate="txtApplicantfullname1" 
                    style="color: #FF0000"></asp:RequiredFieldValidator>FullName</td>
            <td height="30" class="style19">
               <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ErrorMessage="*" style="color: #FF0000" 
                    ControlToValidate="txtApplicantNationality1"></asp:RequiredFieldValidator> Nationality</td>
            <td width="12%" height="30">
               <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ErrorMessage="*" style="color: #FF0000" 
                    ControlToValidate="txtApplicantaddress1"></asp:RequiredFieldValidator> Addresss</td>
            <td colspan="2" width="12%" height="30">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ErrorMessage="*" style="color: #FF0000" 
                    ControlToValidate="txtApplicantemailid1"></asp:RequiredFieldValidator>EmailId</td>
            <td height="30" class="style27">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ErrorMessage="*" style="color: #FF0000" 
                    ControlToValidate="txtApplicantcontactno1"></asp:RequiredFieldValidator>ContactNo.</td>
                
                    
        </tr>
        --%>
        <%--<tr>
            <td height="30" class="style33">
                &nbsp;</td>
            <td class="style22" height="30">
                <asp:TextBox ID="txtApplicantfullname1" runat="server" 
                    placeholder="Name of Applicant1"  Height="24px" 
                    CssClass="txt_active"  Width="150px" BorderStyle="Groove"></asp:TextBox>
            </td>
            <td height="30" class="style19">
                <asp:TextBox ID="txtApplicantNationality1" runat="server" 
                    placeholder="Nationality of Applicant1"  Height="22px" 
                    CssClass="txt_active"  Width="150px" BorderStyle="Groove"></asp:TextBox>
            </td>
            <td width="12%" height="30">
                <asp:TextBox ID="txtApplicantaddress1" runat="server" placeholder="Address of Applicant1" BorderStyle="Groove" Height="22px" 
                   CssClass="txt_active"   Width="150px"></asp:TextBox>
            </td>
            <td colspan="2" width="19%" height="30">
                <asp:TextBox ID="txtApplicantemailid1" runat="server" placeholder="Email ID of Applicant1" BorderStyle="Groove"  Height="22px" 
                   CssClass="txt_active"   Width="150px"></asp:TextBox>
            </td>
            <td height="30" class="style27">
                <asp:TextBox ID="txtApplicantcontactno1" runat="server" placeholder="Mobile of Applicant1" BorderStyle="Groove" Height="24px" 
                   CssClass="txt_active"   Width="150px"></asp:TextBox>
            </td>
          
        </tr>
        --%> <tr>
            <%--<td class="style2" colspan="6" height="30">--%>
             <td class="style35">
                 &nbsp;</td>
           <td height="30" class="style33" colspan="6">
              
         <asp:gridview ID="Gridview1" runat="server" ShowFooter="True" 
            AutoGenerateColumns="False"  OnRowCreated="Gridview1_RowCreated"
            Width="557px" 
                   style="margin-left: 0px">
            <Columns>
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
                <asp:TemplateField HeaderText="ContactNo."><ItemTemplate>
                    <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                </ItemTemplate></asp:TemplateField>
                <asp:TemplateField>
                <FooterStyle HorizontalAlign="Right" />
                <FooterTemplate>
                 <asp:Button ID="ButtonAdd" runat="server" Text="Add New Row" OnClick="ButtonAdd_Click" />
                </FooterTemplate>
                <ItemTemplate>
                    <asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click">Remove</asp:LinkButton>
                </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:gridview>
        <%--<asp:Button ID="ButtonAdd" runat="server" Text="Add New Row" OnClick="ButtonAdd_Click" />--%>
        <asp:Button ID="Button1" runat="server" Text="Save" onclick="Button1_Click" />

          </td>
 </tr>
       
        <tr class="style37">
            <td class="style5" height="30">
                2.</td>
            <td class="style6" colspan="6" height="30">
                <b>INVENTOR(s):</b></td>
        </tr>
        <tr>
            <td height="30" class="style33">
                &nbsp;</td>
            <td class="style22" height="30">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                    ErrorMessage="*" ControlToValidate="txtInventorfullname1" 
                    style="color: #FF0000"></asp:RequiredFieldValidator>FullName</td>
            <td height="30" class="style19">
               <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                    ErrorMessage="*" ControlToValidate="txtInventorNationality1" 
                    style="color: #FF0000"></asp:RequiredFieldValidator> Nationality</td>
            <td width="12%" height="30">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                    ErrorMessage="*" ControlToValidate="txtInventoraddress1" style="color: #FF0000"></asp:RequiredFieldValidator>Addresss</td>
            <td colspan="2" height="30" class="style15">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                    ErrorMessage="*" ControlToValidate="txtInventoremailid1" style="color: #FF0000"></asp:RequiredFieldValidator>EmailId</td>
            <td height="30" class="style27">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                    ErrorMessage="*" ControlToValidate="txtInventorcontactno1" 
                    style="color: #FF0000"></asp:RequiredFieldValidator>ContactNo.</td>
        </tr>
        <tr>
            <td height="30" class="style33">
                &nbsp;</td>
            <td class="style22" height="30">
                <asp:TextBox ID="txtInventorfullname1" runat="server" 
                    placeholder="Name of Inventor1"  Height="24px" 
                    Width="150px" CssClass="txt_active" BorderStyle="Groove"></asp:TextBox>
            </td>
            <td height="30" class="style19">
                <asp:TextBox ID="txtInventorNationality1" runat="server" placeholder="Nationality of Inventor1"  Height="22px" 
                    CssClass="txt_active" Width="150px" BorderStyle="Groove"></asp:TextBox>
            </td>
            <td width="12%" height="30">
                <asp:TextBox ID="txtInventoraddress1" runat="server" placeholder="Address of Inventor1" BorderStyle="Groove" Height="22px" 
                     CssClass="txt_active" Width="150px"></asp:TextBox>
            </td>
            <td colspan="2" height="30" class="style15">
                <asp:TextBox ID="txtInventoremailid1" runat="server" placeholder="Email ID of Inventor1"  Height="22px" 
                     CssClass="txt_active" Width="150px" BorderStyle="Groove"></asp:TextBox>
            </td>
            <td height="30" class="style27">
                <asp:TextBox ID="txtInventorcontactno1" runat="server" placeholder="Mobile of Inventor1"  Height="24px" 
                     CssClass="txt_active" Width="150px" BorderStyle="Groove"></asp:TextBox>
            </td>
         
        </tr>
       
        <tr>
            <td class="style2" colspan="7" height="30">
                &nbsp;</td>
        </tr>
        <tr>
            <td height="30" class="style38">
                <strong>3.</strong></td>
            <td colspan="2" height="30">
               <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
                    ErrorMessage="*" ControlToValidate="txtTitleinvention" style="color: #FF0000"></asp:RequiredFieldValidator> <b>
                <span class="style37">TITLE OF INVENTION/PROJECT:</span> </b>
            </td>
            <td colspan="4">
                <asp:TextBox ID="txtTitleinvention" runat="server" CssClass="style4 txt_active" Height="22px" 
                      Width="200px" style="color: #800000"></asp:TextBox>
            </td>
            </tr>
        <tr>
            <td class="style2" colspan="7" height="30">
                &nbsp;</td>
            </tr>
        <tr>
            <td rowspan="6" class="style33">
                <strong style="color: #800000">4.</strong></td>
            <td colspan="2" rowspan="6" class="style39">
                <b style="text-align: center">ADDRESS FOR<br />
                CORRESPONDENCE
                OF<br />
                APPLICANT/AUTHORIZED
                <br />
                PATENT AGENT IN INDIA:</b></td>
            <td align="right" colspan="2" class="style17" width="12%">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" 
                    ErrorMessage="*" ControlToValidate="txtCorrespondencename" 
                    style="color: #FF0000"></asp:RequiredFieldValidator>Name:</td>
            <td colspan="2" class="style18">
                <asp:TextBox ID="txtCorrespondencename" runat="server" Height="24px" 
                    CssClass="txt_active"  Width="150px" BorderStyle="Groove"></asp:TextBox>
            </td>
            </tr>
        <tr>
            <td align="right"  colspan="2" class="style16" width="12%">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" 
                    ErrorMessage="*" ControlToValidate="txtCorrespondenceaddress" 
                    style="color: #FF0000"></asp:RequiredFieldValidator>Address:</td>
            <td colspan="2" class="style14">
                <asp:TextBox ID="txtCorrespondenceaddress" runat="server" Height="81px" Width="147px" 
                   CssClass="txt_area_active"   TextMode="MultiLine" BorderStyle="Groove"></asp:TextBox>
            </td>
            </tr>
        <tr>
            <td align="right"  colspan="2" height="30" class="style15" width="12%">
                Telephone No:</td>
            <td colspan="2" height="30">
                <asp:TextBox ID="txtCorrespondencetelephoneno" runat="server" Height="24px" 
                   CssClass="txt_active"   Width="150px" BorderStyle="Groove"></asp:TextBox>
            </td>
            </tr>
        <tr>
            <td align="right"  colspan="2" height="30" class="style15" width="12%">
                Fax No.</td>
            <td colspan="2" height="30">
                <asp:TextBox ID="txtCorrespondencefaxno" runat="server" Height="24px" 
                   CssClass="txt_active"   Width="150px" BorderStyle="Groove"></asp:TextBox>
            </td>
            </tr>
        <tr>
            <td align="right"  colspan="2" height="30" class="style15" width="12%">
               <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" 
                    ErrorMessage="*" ControlToValidate="txtCorrespondencemobileno" 
                    style="color: #FF0000"></asp:RequiredFieldValidator> Mobile No:</td>
            <td colspan="2" height="30">
                <asp:TextBox ID="txtCorrespondencemobileno" runat="server" Height="22px" 
                  CssClass="txt_active"    Width="150px" BorderStyle="Groove"></asp:TextBox>
            </td>
            </tr>
        <tr>
            <td  align="right" colspan="2" height="30" class="style15" width="12%">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" 
                    ErrorMessage="*" ControlToValidate="txtCorrespondenceemailid" 
                    style="color: #FF0000"></asp:RequiredFieldValidator>Email Id:</td>
            <td colspan="2" height="30">
                <asp:TextBox ID="txtCorrespondenceemailid" runat="server" Height="22px" 
                  CssClass="txt_active"    Width="150px" BorderStyle="Groove"></asp:TextBox>
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
            <td colspan="2" height="30" class="style15">
                Name ofApplicant</td>
            <td height="30" class="style27">
                &nbsp;Title of Invention&nbsp;</td>
        </tr>
        <tr>
            <td height="30" class="style33">
                &nbsp;</td>
            <td class="style22" height="30">
                <asp:TextBox ID="txt5_country" runat="server"  CssClass="txt_active" 
                    Height="24px" Width="150px" placeholder="Not Applicable" ReadOnly="true" BorderStyle="Groove"></asp:TextBox>
            </td>
            <td height="30" class="style19">
                <asp:TextBox ID="txt5_Applicationno" runat="server" CssClass="txt_active" BorderStyle="Groove" Height="24px" Width="150px" placeholder="Not Applicable" ReadOnly="true"></asp:TextBox>
            </td>
            <td height="30" width="12%">
                <asp:TextBox ID="txt5_fillingdate" runat="server" CssClass="txt_active" BorderStyle="Groove" Height="24px" Width="150px" placeholder="Not Applicable" ReadOnly="true"></asp:TextBox>
            </td>
            <td colspan="2" height="30" class="style15">
                <asp:TextBox ID="txt5_nameofapplicant" runat="server" Height="24px" 
                    CssClass="txt_active"  Width="150px" placeholder="Not Applicable" ReadOnly="true" BorderStyle="Groove"></asp:TextBox>
            </td>
            <td height="30" class="style27">
                <asp:TextBox ID="txt5_titleofinvention" runat="server" Height="24px" 
                   CssClass="txt_active"   Width="114px" placeholder="Not Applicable" ReadOnly="true" BorderStyle="Groove"></asp:TextBox>
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
            <td colspan="2" height="30" class="style15">
                &nbsp;</td>
            <td height="30" class="style27">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style34">
                <strong style="color: #800000">6.</strong></td>
            <td colspan="6" class="style36">
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
                    CssClass="txt_active"  Width="114px" placeholder="Not Applicable" ReadOnly="true" BorderStyle="Groove"></asp:TextBox>
            </td>
            <td colspan="4" height="30">
                <asp:TextBox ID="txt6_internationalfillingdate" runat="server" Height="24px" 
 CssClass="txt_active" Width="114px" placeholder="Not Applicable" ReadOnly="true" BorderStyle="Groove"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style34">
                </td>
            <td colspan="6" class="style21">
                </td>
        </tr>
        <tr>
            <td class="style35">
                <strong>7.</strong></td>
            <td colspan="6" class="style36">
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
                <asp:TextBox ID="txt7_originalno" CssClass="txt_active"  runat="server" Height="24px" Width="114px" BorderStyle="Groove" placeholder="Not Applicable" ReadOnly="true"></asp:TextBox>
            </td>
            <td colspan="4" height="30">
                <asp:TextBox ID="txt6_dateoffilling" CssClass="txt_active"  runat="server" Height="24px" Width="114px" BorderStyle="Groove" placeholder="Not Applicable" ReadOnly="true"></asp:TextBox>
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
                <strong style="color: #800000">8.</strong></td>
            <td colspan="6" class="style36">
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
            <td class="style31">
                </td>
            <td colspan="2" class="style7">
                <asp:TextBox ID="txt8_mainapplication"  CssClass="txt_active" runat="server" Height="24px" 
                    Width="114px" placeholder="Not Applicable" ReadOnly="true" BorderStyle="Groove"></asp:TextBox>
            </td>
            <td colspan="4" class="style7">
                <asp:TextBox ID="txt8_dateoffilling"  CssClass="txt_active" BorderStyle="Groove" runat="server" Height="24px" Width="114px" placeholder="Not Applicable" ReadOnly="true"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style32">
                </td>
            <td align="center" colspan="6" class="style24">
                <asp:Button ID="btn_next_form" align="center"  runat="server" 
                    Text="Go to Next Half" BackColor="White" BorderColor="White" 
                    Font-Bold="True" ForeColor="Maroon" onclick="btn_next_form_Click" />
                </td>
        </tr>  
    
    </table>
   
    </form>
   
</asp:Content>

