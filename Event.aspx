<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EVENT.aspx.cs"
Inherits="p4.EVENT" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<title>Online Event Registration Portal</title>
<style>
body { font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
background-color: #f0f2f5; margin: 30px; }
.form-container { max-width: 650px; margin: auto; background: #ffffff;
padding: 30px; border-radius: 8px; box-shadow: 0 4px 12px
rgba(0,0,0,0.1); }
h2 { text-align: center; color: #1a73e8; margin-bottom: 20px; }
.form-group { margin-bottom: 16px; }
label { font-weight: 600; display: block; margin-bottom: 6px; color:#333; }
.form-control { width: 100%; padding: 9px; box-sizing: border-box; border:
1px solid #ccc; border-radius: 4px; font-size: 14px; }
.radio-group label, .checkbox-group label { font-weight: normal;
display:inline-block; margin-right: 15px; }
.error { color: #d93025; font-size: 0.85em; display: block; margin-top:
4px; }
.btn-submit { background-color: #1a73e8; color: white; padding: 12px;
border: none; border-radius: 4px; cursor: pointer; width: 100%; font-size:
16px; font-weight: bold; margin-top: 10px; }
.btn-submit:hover { background-color: #1557b0; }
.success-panel { background-color: #e6f4ea; color: #137333; padding: 20px;
border-radius: 6px; margin-top: 20px; border: 1px solid #ceead6; }
</style>
</head>
<body>
<form id="form1" runat="server" enctype="multipart/form-data">
<div class="form-container">
<h2>Event Registration</h2>
<asp:ValidationSummary ID="ValSummary" runat="server" CssClass="error"
HeaderText="Please correct the following errors:"
DisplayMode="BulletList" /><div class="form-group">
<asp:Label ID="lblName" runat="server" Text="Name:"
AssociatedControlID="txtName"></asp:Label>
<asp:TextBox ID="txtName" runat="server" CssClass="form-control"
ViewStateMode="Enabled"></asp:TextBox>
<asp:RequiredFieldValidator ID="rfvName" runat="server"
ControlToValidate="txtName"
ErrorMessage="Name is required."
CssClass="error">*</asp:RequiredFieldValidator>
</div>
<div class="form-group">
<asp:Label ID="lblEmail" runat="server" Text="Email Address:"
AssociatedControlID="txtEmail"></asp:Label>
<asp:TextBox ID="txtEmail" runat="server" CssClass="form-control"
TextMode="Email"></asp:TextBox>
<asp:RequiredFieldValidator ID="rfvEmail" runat="server"
ControlToValidate="txtEmail"
ErrorMessage="Email address is required." CssClass="error"
Display="Dynamic">*</asp:RequiredFieldValidator>
<asp:RegularExpressionValidator ID="revEmail" runat="server"
ControlToValidate="txtEmail"
ValidationExpression="^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$"
ErrorMessage="Enter a valid email address." CssClass="error"
Display="Dynamic">Invalid email format.</asp:RegularExpressionValidator>
</div>
<div class="form-group">
<asp:Label ID="lblMobile" runat="server" Text="Mobile No (10
Digits):" AssociatedControlID="txtMobile"></asp:Label>
<asp:TextBox ID="txtMobile" runat="server" CssClass="form-control"
MaxLength="10"></asp:TextBox>
<asp:RequiredFieldValidator ID="rfvMobile" runat="server"
ControlToValidate="txtMobile"
ErrorMessage="Mobile number is required." CssClass="error"
Display="Dynamic">*</asp:RequiredFieldValidator>
<asp:RegularExpressionValidator ID="revMobile" runat="server"
ControlToValidate="txtMobile"
ValidationExpression="^\d{10}$"
ErrorMessage="Mobile number must be exactly 10 digits."
CssClass="error" Display="Dynamic">Must be 10
digits.</asp:RegularExpressionValidator>
</div>
<div class="form-group">
<asp:Label ID="lblDOB" runat="server" Text="Date of Birth:"
AssociatedControlID="txtDOB"></asp:Label>
<asp:TextBox ID="txtDOB" runat="server" CssClass="form-control"
TextMode="Date"></asp:TextBox>
<asp:RequiredFieldValidator ID="rfvDOB" runat="server"
ControlToValidate="txtDOB"
ErrorMessage="Date of birth is required." CssClass="error"Display="Dynamic">*</asp:RequiredFieldValidator>
</div>
<div class="form-group">
<asp:Label ID="lblGender" runat="server"
Text="Gender:"></asp:Label>
<asp:RadioButtonList ID="rblGender" runat="server"
RepeatDirection="Horizontal" CssClass="radio-group">
<asp:ListItem Value="Male">Male</asp:ListItem>
<asp:ListItem Value="Female">Female</asp:ListItem>
<asp:ListItem Value="Other">Other</asp:ListItem>
</asp:RadioButtonList>
<asp:RequiredFieldValidator ID="rfvGender" runat="server"
ControlToValidate="rblGender"
ErrorMessage="Please select your gender." CssClass="error"
Display="Dynamic">* Select gender</asp:RequiredFieldValidator>
</div>
<div cl
ass="form-group">
<asp:Label ID="lblCollege" runat="server" Text="College Name:"
AssociatedControlID="txtCollege"></asp:Label>
<asp:TextBox ID="txtCollege" runat="server" CssClass="form-
control"></asp:TextBox>
<asp:RequiredFieldValidator ID="rfvCollege" runat="server"
ControlToValidate="txtCollege"
ErrorMessage="College name is required." CssClass="error"
Display="Dynamic">*</asp:RequiredFieldValidator>
</div>
<div class="form-group">
<asp:Label ID="lblBranch" runat="server" Text="Branch / Stream:"
AssociatedControlID="ddlBranch"></asp:Label>
<asp:DropDownList ID="ddlBranch" runat="server" CssClass="form-control">
<asp:ListItem Value="" Text="-- Select Branch --"></asp:ListItem>
<asp:ListItem Value="Computer Science">Computer Science / IT</asp:ListItem>
<asp:ListItem Value="Mechanical">Mechanical Engineering</asp:ListItem>
<asp:ListItem Value="Civil">Civil Engineering</asp:ListItem>
<asp:ListItem Value="Electrical">Electrical / Electronics</asp:ListItem>
<asp:ListItem Value="Commerce">Commerce / Business</asp:ListItem>
<asp:ListItem Value="Other">Other</asp:ListItem>
</asp:DropDownList>
<asp:RequiredFieldValidator ID="rfvBranch" runat="server"
ControlToValidate="ddlBranch"
InitialValue="" ErrorMessage="Please select your branch."
CssClass="error" Display="Dynamic">* Select
branch</asp:RequiredFieldValidator>
</div>
<div class="form-group">
<asp:Label ID="lblCity" runat="server" Text="City:" <asp:TextBox
ID="txtCity" runat="server" CssClass="form-control"></asp:TextBox>
<asp:RequiredFieldValidator ID="rfvCity" runat="server"
ControlToValidate="txtCity"ErrorMessage="City is required." CssClass="error"
Display="Dynamic">*</asp:RequiredFieldValidator>
</div>
<div class="form-group">
<asp:Label ID="lblPassType" runat="server" Text="Pass Type:"
AssociatedControlID="ddlPassType"></asp:Label>
<asp:DropDownList ID="ddlPassType" runat="server" CssClass="form-control">
<asp:ListItem Value="" Text="-- Select Pass Type --"></asp:ListItem>
<asp:ListItem Value="Standard Pass">Standard Pass (Free
Entry)</asp:ListItem>
<asp:ListItem Value="Workshop Pass">Workshop Pass ($15)</asp:ListItem>
<asp:ListItem Value="VIP All-Access Pass">VIP All-Access Pass
($30)</asp:ListItem>
<asp:RequiredFieldValidator ID="rfvPassType" runat="server"
ControlToValidate="ddlPassType"
InitialValue="" ErrorMessage="Please select a pass type."
CssClass="error" Display="Dynamic">* Select pass type</asp:RequiredFieldValidator>
</div>
<div class="form-group">
<asp:Label ID="lblFile" runat="server" Text="Upload Student ID / Photo
(JPG/PNG/PDF):" AssociatedControlID="fuStudentDoc"></asp:Label>
<asp:FileUpload ID="fuStudentDoc" runat="server" CssClass="form-control"
AllowMultiple="True" />
<asp:RequiredFieldValidator ID="rfvFile" runat="server"
ControlToValidate="fuStudentDoc"
ErrorMessage="File upload is required." CssClass="error"
Display="Dynamic">* Upload a document</asp:RequiredFieldValidator>
</div>
<asp:Button ID="btnRegister" runat="server" Text="Submit Registration"
OnClick="btnRegister_Click" CssClass="btn-submit" />
<asp:Panel ID="pnlSuccess" runat="server" Visible="false" CssClass="success-
panel">
<h3>Registration Successful!</h3>
<asp:Literal ID="litConfirmation" runat="server"></asp:Literal>
</asp:Panel>
</div>
</form>
</body>
</html>
