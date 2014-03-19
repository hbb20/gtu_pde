<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Forgotpswd.aspx.cs" Inherits="gtu_pde.Forgotpswd" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">

	<!-- General Metas -->
	<meta charset="utf-8" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">	<!-- Force Latest IE rendering engine -->
	<title>Forgot Password</title>
	<meta name="description" content="">
	<meta name="author" content="">
	<!--[if lt IE 9]>
		<script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
	<![endif]-->
	
	<!-- Mobile Specific Metas -->
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" /> 
	
	<!-- Stylesheets -->
    <link href="login_temp/css/base.css" rel="stylesheet" type="text/css" />
    <link href="login_temp/css/layout.css" rel="stylesheet" type="text/css" />
    <link href="login_temp/css/skeleton.css" rel="stylesheet" type="text/css" />
	
    <script language="javascript" type="text/javascript">
// <![CDATA[


// ]]>
    </script>
    <style type="text/css">
        .style1
        {
            width: 116px;
            margin-left:auto;
        }
        .style2
        {
            width: 233px;
        }
    </style>
    </head>
    <body>

	<%--<div class="notice">
		<a href="" class="close">close</a>
		<p class="warn">Whoops! We didn't recognise your username or password. Please try again.</p>
	</div>--%>



	<!-- Primary Page Layout -->

	<div class="container">
	<div class="form-bg">
			<form id="forgot_pswd" runat="server">
				<h2>Forgot Password</h2>
               
                <table cellspacing="20px" cellpadding="20px">
                <tr>
                <td class="style1">
                    &nbsp;</td>
                <td class="style2">
                    <asp:TextBox ID="txtteamid" placeholder="Teamid" runat="server" Height="40px" Width="235px"></asp:TextBox>
                    </td>
                    <td>
                          
                    </td>
                </tr>
                <tr>
                <td class="style1">
                    </td>
                <td class="style2">
                    <asp:TextBox ID="txtusername" placeholder="Username" runat="server" Height="40px" Width="235px"></asp:TextBox>
                    </td>
                    <td style="padding-left: 10px" valign="top">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                            ErrorMessage="Enter Username" ControlToValidate="txtusername"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                <td class="style1">
                     </td>
                <td class="style2">
                <asp:DropDownList ID="ddlSecurityQuestion" runat="server" Height="20px" 
                           Width="250px">
                        <asp:ListItem Text="Select your security question" Value="0"></asp:ListItem>
                        <asp:ListItem Text="Which is your native place?" Value="1"></asp:ListItem>
                        <asp:ListItem Text="Who is your best friend?" Value="2"></asp:ListItem>
                        <asp:ListItem Text="What is your school name?" Value="3"></asp:ListItem>
                        <asp:ListItem Text="What is your college name?" Value="4"></asp:ListItem>
                        <asp:ListItem Text="Which is your favourite food?" Value="5"></asp:ListItem>
                        <asp:ListItem Text="What is your childhood nick name?" Value="6"></asp:ListItem>
                        <asp:ListItem Text="Which is your favourite colour?" Value="7"></asp:ListItem>
                        <asp:ListItem Text="What is the name of your of favourite cousin?" Value="8"></asp:ListItem>
                    </asp:DropDownList>  
                   </td>
                   <td></td>
                  </tr>
                <tr>
                <td>
                </td>
                <td>
                    <asp:TextBox ID="txtsecans" placeholder="Answer" runat="server" Height="40px" Width="235px"></asp:TextBox>
                </td>
                <td></td>
                </tr>
                
                </table>
                <center>
                    <asp:Button ID="btnLogin" runat="server" Text="Get Your Password" BackColor="#66FFFF"
                        ForeColor="#0033CC" BorderStyle="Groove" Height="32px" Font-Bold="True" /></center>
                       
           <asp:Panel ID="Pnlforgotpswd" runat="server" Visible="false">
                <asp:Label ID="lblforgotpswd" runat="server" Text="Label"></asp:Label>
            </asp:Panel>
			</form>
		</div>

	
		<p class="forgot">Forgot your password? <a href="">Click here to reset it.</a></p>


	</div><!-- container -->

	<!-- JS  -->
        <script src="login_temp/js/jquery-1.5.1.min.js" type="text/javascript"></script>
        <script src="login_temp/js/app.js" type="text/javascript"></script>
	<script src="login_temp//ajax.googleapis.com/ajax/libs/jquery/1.5.1/jquery.js"></script>
	<script src="window.jQuery || document.write("<script src='login_temp/js/jquery-1.5.1.min.js'></script>;")</script>
	
	
<!-- End Document -->
</body>
</html>
