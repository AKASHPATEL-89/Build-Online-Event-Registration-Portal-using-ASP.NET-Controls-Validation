using System;
using System.IO;
using System.Text;
using System.Web.UI;namespace p4
{
public partial class EVENT : Page
{
protected void Page_Load(object sender, EventArgs e)
{
if (!IsPostBack)
{
pnlSuccess.Visible = false;
}
}
protected void btnRegister_Click(object sender, EventArgs e)
{
if (Page.IsValid)
{
string fileName = string.Empty;
// Handle File Upload
if (fuStudentDoc.HasFile)
{
try
{
string extension = Path.GetExtension(fuStudentDoc.FileName).ToLower();
string[] allowedExtensions = { ".jpg", ".jpeg", ".png", ".pdf" };
if (Array.IndexOf(allowedExtensions, extension) >= 0)
{
// Save file inside 'Uploads' folder in your project
string uploadFolder = Server.MapPath("~/Uploads/");
if (!Directory.Exists(uploadFolder))
{
Directory.CreateDirectory(uploadFolder);
}
fileName = Path.GetFileName(fuStudentDoc.FileName);
string savePath = Path.Combine(uploadFolder, fileName);
fuStudentDoc.SaveAs(savePath);
}
else
{
pnlSuccess.Visible = true;
pnlSuccess.CssClass = "error";
litConfirmation.Text = "Invalid file type. Only JPG, PNG, and PDF files are allowed.";
return;
}
}
catch (Exception ex)
{
pnlSuccess.Visible = true;
pnlSuccess.CssClass = "error";
litConfirmation.Text = "File upload failed: " + ex.Message;
return;
}}
// Construct Confirmation Details
StringBuilder confirmation = new StringBuilder();
confirmation.AppendFormat("<p><strong>Name:</strong> {0}</p>", txtName.Text.Trim());
confirmation.AppendFormat("<p><strong>Email:</strong> {0}</p>", txtEmail.Text.Trim());
confirmation.AppendFormat("<p><strong>Mobile No:</strong> {0}</p>", txtMobile.Text.Trim());
confirmation.AppendFormat("<p><strong>Date of Birth:</strong> {0}</p>", txtDOB.Text);
confirmation.AppendFormat("<p><strong>Gender:</strong> {0}</p>", rblGender.SelectedValue);
confirmation.AppendFormat("<p><strong>College Name:</strong> {0}</p>", txtCollege.Text.Trim());
confirmation.AppendFormat("<p><strong>Branch:</strong> {0}</p>", ddlBranch.SelectedValue);
confirmation.AppendFormat("<p><strong>City:</strong> {0}</p>", txtCity.Text.Trim());
confirmation.AppendFormat("<p><strong>Pass Type:</strong> {0}</p>", ddlPassType.SelectedValue);
confirmation.AppendFormat("<p><strong>Uploaded File:</strong> {0}</p>", fileName);
litConfirmation.Text = confirmation.ToString();
pnlSuccess.Visible = true;
ClearForm();
}
}
private void ClearForm()
{
txtName.Text = string.Empty;
txtEmail.Text = string.Empty;
txtMobile.Text = string.Empty;
txtDOB.Text = string.Empty;
rblGender.ClearSelection();
txtCollege.Text = string.Empty;
ddlBranch.SelectedIndex = 0;
txtCity.Text = string.Empty;
ddlPassType.SelectedIndex = 0;
}
}
}
