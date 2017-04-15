using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PackTracker
{
    public partial class _default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            HiddenField.Value = "hot diggity";

            Literal Literal1 = new Literal();
            Literal1.Text = "On Page load this placeholder is replaced with the text literal you are reading";
            PlaceHolder.Controls.Add(Literal1);

            string CS4 = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;

            using (SqlConnection con4 = new SqlConnection(CS4))
            {
                SqlCommand cmd4 = new SqlCommand("select id,name,weight,weightUnitID from item", con4);
                con4.Open();
                SqlDataReader sdr = cmd4.ExecuteReader();
                GridView1.DataSource = sdr;
                GridView1.DataBind();
            }

            if (!IsPostBack)
            {
                Calendar.Visible = false;

                multiView.ActiveViewIndex = 0;

                AdminPanel.Visible = false;
                NonAdminPanel.Visible = false;

                using (SqlConnection con1 = new SqlConnection(CS4))
                {
                    SqlCommand cmd = new SqlCommand("select id,name from item", con1);
                    con1.Open();
                    SqlDataReader rdr = cmd.ExecuteReader();
                    DropDownList.DataTextField = "name";
                    DropDownList.DataValueField = "id";
                    DropDownList.DataSource = rdr;
                    DropDownList.DataBind();

                }

            }












        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }


        protected void BulletedList_Click(object sender, BulletedListEventArgs e)
        {
            ListItem li = BulletedList.Items[e.Index];

            StringBuilder returnText = new StringBuilder();
            returnText.Append("Text = " + li.Text + ". ");
            returnText.Append("Value = " + li.Value + ". ");
            returnText.Append("Index = " + e.Index.ToString());

            BulletedListTextBox.Text = returnText.ToString();
        }

        protected void Button_Click(object sender, EventArgs e)
        {
            ButtonTextBox.Text = "Button Clicked";
        }



        protected void Calendar_Click(object sender, ImageClickEventArgs e)
        {
            if (Calendar.Visible)
            {
                Calendar.Visible = false;
            }
            else
            {
                Calendar.Visible = true;
            }
        }

        protected void Calendar_DayRender(object sender, DayRenderEventArgs e)
        {
            if (e.Day.IsWeekend || e.Day.IsOtherMonth)
            {
                e.Day.IsSelectable = false;
                e.Cell.BackColor = System.Drawing.Color.LightGray;
            }
        }

        protected void Calendar_SelectionChanged(object sender, EventArgs e)
        {
            CalendarTextBox.Text = Calendar.SelectedDate.ToShortDateString();
            Calendar.Visible = false;
        }

        protected void CheckBox_CheckedChanged(object sender, EventArgs e)
        {
            if (CheckBox.Checked)
            {
                CheckBoxTextBox.Text = "Checked!!";
            }
            else
            {
                CheckBoxTextBox.Text = "Not checked!!";
            }
        }

        protected void CheckBoxList_SelectedIndexChanged(object sender, EventArgs e)
        {
            StringBuilder myString = new StringBuilder();

            foreach (ListItem li in CheckBoxList.Items)
            {
                if (li.Selected)
                {
                    myString.Append(li.Text + " is selected! ");
                }
                else
                {
                    myString.Append(li.Text + " is Not selected! ");
                }
            }
            CheckBoxListTextBox.Text = myString.ToString();
        }


        protected void RadioButtonTextBox_Load(object sender, EventArgs e)
        {
            if (RadioButton.Checked)
            {
                RadioButtonTextBox.Text = "Checked!";
            }
            else
            {
                RadioButtonTextBox.Text = "Not checked!";
            }
        }

        protected void RadioButton_CheckedChanged(object sender, EventArgs e)
        {
            if (RadioButton.Checked)
            {
                RadioButtonTextBox.Text = "Checked!!Cannot Undo!";
            }
            else
            {
                RadioButtonTextBox.Text = "Not checked!!Cannot Undo!";
            }
        }

        protected void RadioButtonList_SelectedIndexChanged(object sender, EventArgs e)
        {
            RadioButtonListTextBox.Text = RadioButtonList.SelectedItem.Text;
        }

        protected void DropDownList_SelectedIndexChanged(object sender, EventArgs e)
        {
            DropDownListTextBox.Text = DropDownList.SelectedItem.Text.ToString();
        }

        protected void btnFileUpload_Click(object sender, EventArgs e)
        {
            // If the user has selected a file
            if (FileUpload.HasFile)
            {
                // Get the file extension
                string fileExtension = System.IO.Path.GetExtension(FileUpload.FileName);

                if (fileExtension.ToLower() != ".png" && fileExtension.ToUpper() != ".jpg")
                {
                    lblFileUploadMessage.ForeColor = System.Drawing.Color.Red;
                    lblFileUploadMessage.Text = "Only files with .png and .jpg extension are allowed";
                }
                else
                {
                    // Get the file size
                    int fileSize = FileUpload.PostedFile.ContentLength;
                    // If file size is greater than 2 MB
                    if (fileSize > 2097152)
                    {
                        lblFileUploadMessage.ForeColor = System.Drawing.Color.Red;
                        lblFileUploadMessage.Text = "File size cannot be greater than 2 MB";
                    }
                    else
                    {
                        // Upload the file
                        FileUpload.SaveAs(Server.MapPath("~/Uploads/" + FileUpload.FileName));
                        lblFileUploadMessage.ForeColor = System.Drawing.Color.Green;
                        lblFileUploadMessage.Text = "File uploaded successfully";
                    }
                }
            }
            else
            {
                lblFileUploadMessage.ForeColor = System.Drawing.Color.Red;
                lblFileUploadMessage.Text = "Please select a file";
            }
        }

        protected void btnLabe_Click(object sender, EventArgs e)
        {
            Label.ForeColor = System.Drawing.Color.Red;
            Label.Text = "Label Updated";
        }

        protected void ImageButton_Click(object sender, ImageClickEventArgs e)
        {
            ImageButtonTextBox.Text = "Image button clicked";
        }

        protected void ButtonListBox_Click(object sender, EventArgs e)
        {
            StringBuilder myString = new StringBuilder();

            foreach (ListItem li in ListBox.Items)
            {
                if (li.Selected)
                {
                    myString.Append(li.Text + " is selected. ");
                }

            }
            ListBoxTextBox.Text = myString.ToString();
        }


        protected void MultiViewbtnGoToStep2_Click(object sender, EventArgs e)
        {
            multiView.ActiveViewIndex = 1;
        }

        protected void MultiViewBacktoStep1_Click(object sender, EventArgs e)
        {
            multiView.ActiveViewIndex = 0;
        }

        protected void MultiViewBacktoStep3_Click(object sender, EventArgs e)
        {
            multiView.ActiveViewIndex = 2;
        }

        protected void MultiViewBacktoStep2(object sender, EventArgs e)
        {
            multiView.ActiveViewIndex = 1;
        }

        protected void MultiViewSubmit(object sender, EventArgs e)
        {
            MultiViewTextBox.Text = "Done";
        }

        protected void TextBoxButton_Click(object sender, EventArgs e)
        {
            TextBox.Text = "Clicked";
        }

        protected void PanelDropDownList_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (PanelDropDownList.SelectedValue == "Admin")
            {
                AdminPanel.Visible = true;
                NonAdminPanel.Visible = false;
            }
            else if (PanelDropDownList.SelectedValue == "Non-Admin")
            {
                AdminPanel.Visible = false;
                NonAdminPanel.Visible = true;
            }
            else
            {
                AdminPanel.Visible = false;
                NonAdminPanel.Visible = false;
            }
        }


        protected void Wizard1_NextButtonClick(object sender, WizardNavigationEventArgs e)
        {
            if (e.NextStepIndex == 2)
            {
                lblFirstName.Text = txtFirstName.Text;
                lblEmail.Text = txtEmail.Text;
            }
        }

        protected void Wizard1_FinishButtonClick(object sender, WizardNavigationEventArgs e)
        {
            WizardTextBox.Text = lblFirstName.Text+" "+ lblEmail.Text;
        }



        protected void RequiredFieldValidatorbtnSave_Click(object sender, EventArgs e)
        {

            if (Page.IsValid)
            {
                RequiredFieldValidatorlblStatus.ForeColor = System.Drawing.Color.Green;
                RequiredFieldValidatorlblStatus.Text = "Data saved successfully!";
            }
            else
            {
                RequiredFieldValidatorlblStatus.ForeColor = System.Drawing.Color.Red;
                RequiredFieldValidatorlblStatus.Text = "Data not valid and not saved!";
            }
        }


        protected void RangeValidatorbtnSave_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                RangeValidatorlblStatus.ForeColor = System.Drawing.Color.Green;
                RangeValidatorlblStatus.Text = "Data Saved successfully";
            }
            else
            {
                RangeValidatorlblStatus.ForeColor = System.Drawing.Color.Red;
                RangeValidatorlblStatus.Text = "Validation Failed! Data not saved";
            }
        }


        protected void CompareValidatorbtnSave_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                CompareValidatorLabel.ForeColor = System.Drawing.Color.Green;
                CompareValidatorLabel.Text = "Data Saved successfully";
            }
            else
            {
                CompareValidatorLabel.ForeColor = System.Drawing.Color.Red;
                CompareValidatorLabel.Text = "Validation Failed! Data not saved";
            }
        }



        protected void CustomValidatorbtnSubmit_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                CustomValidatorlblStatus.Text = "Data Saved";
                CustomValidatorlblStatus.ForeColor = System.Drawing.Color.Green;
            }
            else
            {
                CustomValidatorlblStatus.Text = "Validation Error! Data Not Saved";
                CustomValidatorlblStatus.ForeColor = System.Drawing.Color.Red;
            }
        }

        protected void CustomValidatorEvenNumber_ServerValidate(object source, ServerValidateEventArgs args)
        {
            if (args.Value == "")
            {
                args.IsValid = false;
            }
            else
            {
                int Number;
                bool isNumber = int.TryParse(args.Value, out Number);
                if (isNumber && Number >= 0 && (Number % 2) == 0)
                {
                    args.IsValid = true;
                }
                else
                {
                    args.IsValid = false;
                }
            }
        }

        protected void ValidationSummarybtnSubmit_Click(object sender, EventArgs e)
        {

        }
    }

}