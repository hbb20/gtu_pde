<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="gtu_pde.login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<script runat="server">

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnLogin_Click(object sender, EventArgs e)
    {

    }
</script>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

	<!-- General Metas -->
	<meta charset="utf-8" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">	<!-- Force Latest IE rendering engine -->
	<title>Login Form</title>
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
            width: 248px;
        }
        .style2
        {
            width: 111px;
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
	<div class="form-bg" >
			<form id="LoginForm" runat="server">
				<h2>Login</h2>
                <table cellspacing="20px" cellpadding="20px">
                <tr>
                <td class="style2">
                    &nbsp;</td>
                <td class="style1">
                    <asp:TextBox ID="txtteamid" placeholder="Teamid" runat="server" Height="40px" Width="235px"></asp:TextBox>
                    </td>
                    <td style="padding-left: 10px" valign="top">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                            ErrorMessage="Enter Team Id" ControlToValidate="txtteamid"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                <td class="style2">
                    &nbsp;</td>
                <td class="style1">
                    <asp:TextBox ID="txtusername" placeholder="Username" runat="server" Height="40px" Width="235px"></asp:TextBox>
                    </td>
                    <td style="padding-left: 10px" valign="top">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                            ErrorMessage="Enter Username" ControlToValidate="txtusername"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                <td class="style2">
                     </td>
                <td class="style1">
                   <asp:TextBox ID="txtpswd" placeholder="Password" runat="server" Height="40px" Width="235px"></asp:TextBox>
                   </td>
                   <td style="padding-left: 10px" valign="top">
                       <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                           ErrorMessage="Enter Password" ControlToValidate="txtpswd"></asp:RequiredFieldValidator>
                   </td>
                    
                </tr>
                
                </table>
                <center>
                    <asp:Button ID="btnLogin" runat="server" Text="Submit" BackColor="#66FFFF"
                        ForeColor="#0033CC" BorderStyle="Groove" Height="32px" Font-Bold="True" 
                        onclick="btnLogin_Click" /></center>
                        <br />
                        <br />
            
			</form>
		</div>

	
	
		<p class="forgot"><a href="Forgotpswd.aspx">Forgot your password? </a>Click here to reset it.</p>


	</div><!-- container -->

	<!-- JS  -->
        <script src="login_temp/js/jquery-1.5.1.min.js" type="text/javascript"></script>
        <script src="login_temp/js/app.js" type="text/javascript"></script>
        <%--<script src="login_temp//ajax.googleapis.com/ajax/libs/jquery/1.5.1/jquery.js"></script>
	<script src="window.jQuery || document.write("<script src='login_temp/js/jquery-1.5.1.min.js'></script>;")</script>--%>
	
	
<!-- End Document -->
</body>
</html>
