using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;

namespace gtu_pde
{

    public partial class form1 : System.Web.UI.Page
    {
        Color active, passive;
        protected void Page_Load(object sender, EventArgs e)
        {
            active = Color.White;
            passive = Color.WhiteSmoke;
            txtApplicantfullname1.Focus();
            if (!chk_box_mem_2.Checked)
                change_applicant_color(txtapplicantfullname2, txtApplicantNationality2, txtApplicantaddress2, txtApplicantcontactno2, txtApplicantemailid2, passive);
            if (!chk_box_mem_3.Checked)
                change_applicant_color(txtapplicantfullname3, txtApplicantNationality3, txtApplicantaddress3, txtApplicantcontactno3, txtApplicantemailid3, passive);
            if (!chk_box_mem_4.Checked)
                change_applicant_color(txtapplicantfullname4, txtApplicantNationality4, txtApplicantaddress4, txtApplicantcontactno4, txtApplicantemailid4, passive);
            if (!chk_box_mem_5.Checked)
                change_applicant_color(txtapplicantfullname5, txtApplicantNationality5, txtApplicantaddress5, txtApplicantcontactno5, txtApplicantemailid5, passive);




            if (!chk_box_Inventor_2.Checked)
                change_Inventor_color(txtInventorfullname2, txtInventorNationality2, txtInventoraddress2, txtInventorcontactno2, txtInventoremailid2, passive);
            if (!chk_box_Inventor_3.Checked)
                change_Inventor_color(txtInventorfullname3, txtInventorNationality3, txtInventoraddress3, txtInventorcontactno3, txtInventoremailid3, passive);
            if (!chk_box_Inventor_4.Checked)
                change_Inventor_color(txtInventorfullname4, txtInventorNationality4, txtInventoraddress4, txtInventorcontactno4, txtInventoremailid4, passive);
            if (!chk_box_Inventor_5.Checked)
                change_Inventor_color(txtInventorfullname5, txtInventorNationality5, txtInventoraddress5, txtInventorcontactno5, txtInventoremailid5, passive);

        }
        //protected void btn_add_row2_Click(object sender, EventArgs e)
        //{
        //    txtApplicantaddress2.Visible = true;
        //    txtApplicantNationality2.Visible = true;
        //    txtapplicantfullname2.Visible = true;
        //    txtcontactno2.Visible = true;
        //    txtemailid2.Visible = true;

        //}

        protected void btn_next_form_Click(object sender, EventArgs e)
        {
            Response.Redirect("Form1(2).aspx");
        }
        protected void chk_box_mem_2_CheckedChanged(object sender, EventArgs e)
        {
            if (chk_box_mem_2.Checked == true)
            {
                change_applicant_color(txtapplicantfullname2, txtApplicantNationality2, txtApplicantaddress2, txtApplicantcontactno2, txtApplicantemailid2, active);
                txtapplicantfullname2.ReadOnly = false;
                txtApplicantcontactno2.ReadOnly = false;
                txtApplicantemailid2.ReadOnly = false;
                txtApplicantNationality2.ReadOnly = false;
                txtApplicantaddress2.ReadOnly = false;
                txtapplicantfullname2.Focus();

            }
            else
            {
                if (chk_box_mem_3.Checked == true)
                {
                    copy_applicant_row(txtapplicantfullname2, txtApplicantNationality2, txtApplicantaddress2, txtApplicantemailid2, txtApplicantcontactno2, txtapplicantfullname3, txtApplicantNationality3, txtApplicantaddress3, txtApplicantemailid3, txtApplicantcontactno3);
                    chk_box_mem_2.Checked = true;
                    chk_box_mem_2_CheckedChanged(this, null);
                    chk_box_mem_3.Checked = false;
                    chk_box_mem_3_CheckedChanged(this, null);

                    return;
                }

                change_applicant_color(txtapplicantfullname2, txtApplicantNationality2, txtApplicantaddress2, txtApplicantcontactno2, txtApplicantemailid2, passive);

                txtapplicantfullname2.ReadOnly = true;
                txtApplicantcontactno2.ReadOnly = true;
                txtApplicantemailid2.ReadOnly = true;
                txtApplicantNationality2.ReadOnly = true;
                txtApplicantaddress2.ReadOnly = true;

                txtapplicantfullname2.Text = "";
                txtApplicantcontactno2.Text = "";
                txtApplicantemailid2.Text = "";
                txtApplicantNationality2.Text = "";
                txtApplicantaddress2.Text = "";
            }
        }

        protected void change_applicant_color(TextBox t1, TextBox t2, TextBox t3, TextBox t4, TextBox t5, Color c)
        {
            t1.BackColor = c;
            t2.BackColor = c;
            t3.BackColor = c;
            t4.BackColor = c;
            t5.BackColor = c;
            if (c == active)
            {
                t1.CssClass = "txt_active";
                t2.CssClass = "txt_active";
                t3.CssClass = "txt_active";
                t4.CssClass = "txt_active";
                t5.CssClass = "txt_active";

            }
            else
            {
                t1.CssClass =null; 
                t2.CssClass = null;
                t3.CssClass = null;
                t4.CssClass = null;
                t5.CssClass = null;
            }

        }
        protected void chk_box_mem_3_CheckedChanged(object sender, EventArgs e)
        {
            if (chk_box_mem_3.Checked == true)
            {
                if (chk_box_mem_2.Checked == false)
                {
                    chk_box_mem_2.Checked = true;
                    chk_box_mem_2_CheckedChanged(this, null);
                    chk_box_mem_3.Checked = false;

                    return;
                }
                change_applicant_color(txtapplicantfullname3, txtApplicantNationality3, txtApplicantaddress3, txtApplicantcontactno3, txtApplicantemailid3, active);
                txtapplicantfullname3.ReadOnly = false;
                txtApplicantcontactno3.ReadOnly = false;
                txtApplicantemailid3.ReadOnly = false;
                txtApplicantNationality3.ReadOnly = false;
                txtApplicantaddress3.ReadOnly = false;
                txtapplicantfullname3.Focus();


            }
            else
            {
                if (chk_box_mem_4.Checked == true)
                {
                    copy_applicant_row(txtapplicantfullname3, txtApplicantNationality3, txtApplicantaddress3, txtApplicantemailid3, txtApplicantcontactno3, txtapplicantfullname4, txtApplicantNationality4, txtApplicantaddress4, txtApplicantemailid4, txtApplicantcontactno4);
                    chk_box_mem_3.Checked = true;
                    chk_box_mem_3_CheckedChanged(this, null);
                    chk_box_mem_4.Checked = false;
                    chk_box_mem_4_CheckedChanged(this, null);

                    return;
                }


                change_applicant_color(txtapplicantfullname3, txtApplicantNationality3, txtApplicantaddress3, txtApplicantcontactno3, txtApplicantemailid3, passive);
                txtapplicantfullname3.ReadOnly = true;
                txtApplicantcontactno3.ReadOnly = true;
                txtApplicantemailid3.ReadOnly = true;
                txtApplicantNationality3.ReadOnly = true;
                txtApplicantaddress3.ReadOnly = true;

                txtapplicantfullname3.Text = "";
                txtApplicantcontactno3.Text = "";
                txtApplicantemailid3.Text = "";
                txtApplicantNationality3.Text = "";
                txtApplicantaddress3.Text = "";
            }
        }
        protected void chk_box_mem_4_CheckedChanged(object sender, EventArgs e)
        {
            if (chk_box_mem_4.Checked == true)
            {
                if (chk_box_mem_2.Checked == false)
                {
                    chk_box_mem_2.Checked = true;
                    chk_box_mem_2_CheckedChanged(this, null);
                    chk_box_mem_4.Checked = false;

                    return;
                }

                else if (chk_box_mem_3.Checked == false)
                {
                    chk_box_mem_3.Checked = true;
                    chk_box_mem_3_CheckedChanged(this, null);
                    chk_box_mem_4.Checked = false;

                    return;
                }
                change_applicant_color(txtapplicantfullname4, txtApplicantNationality4, txtApplicantaddress4, txtApplicantcontactno4, txtApplicantemailid4, active);
                txtapplicantfullname4.ReadOnly = false;
                txtApplicantcontactno4.ReadOnly = false;
                txtApplicantemailid4.ReadOnly = false;
                txtApplicantNationality4.ReadOnly = false;
                txtApplicantaddress4.ReadOnly = false;
                txtapplicantfullname4.Focus();
            }
            else
            {

                if (chk_box_mem_5.Checked == true)
                {
                    copy_applicant_row(txtapplicantfullname4, txtApplicantNationality4, txtApplicantaddress4, txtApplicantemailid4, txtApplicantcontactno4, txtapplicantfullname5, txtApplicantNationality5, txtApplicantaddress5, txtApplicantemailid5, txtApplicantcontactno5);
                    chk_box_mem_4.Checked = true;
                    chk_box_mem_4_CheckedChanged(this, null);
                    chk_box_mem_5.Checked = false;
                    chk_box_mem_5_CheckedChanged(this, null);

                    return;
                }


                change_applicant_color(txtapplicantfullname4, txtApplicantNationality4, txtApplicantaddress4, txtApplicantcontactno4, txtApplicantemailid4, passive);
                txtapplicantfullname4.ReadOnly = true;
                txtApplicantcontactno4.ReadOnly = true;
                txtApplicantemailid4.ReadOnly = true;
                txtApplicantNationality4.ReadOnly = true;
                txtApplicantaddress4.ReadOnly = true;

                txtapplicantfullname4.Text = "";
                txtApplicantcontactno4.Text = "";
                txtApplicantemailid4.Text = "";
                txtApplicantNationality4.Text = "";
                txtApplicantaddress4.Text = "";
            }
        }

        private void copy_applicant_row(TextBox t1, TextBox t2, TextBox t3, TextBox t4, TextBox t5, TextBox s1, TextBox s2, TextBox s3, TextBox s4, TextBox s5)
        {
            t1.Text = s1.Text;
            t2.Text = s2.Text;
            t3.Text = s3.Text;
            t4.Text = s4.Text;
            t5.Text = s5.Text;

        }
        protected void chk_box_mem_5_CheckedChanged(object sender, EventArgs e)
        {
            if (chk_box_mem_5.Checked == true)
            {
                if (chk_box_mem_2.Checked == false)
                {
                    chk_box_mem_2.Checked = true;
                    chk_box_mem_2_CheckedChanged(this, null);
                    chk_box_mem_5.Checked = false;

                    return;
                }

                else if (chk_box_mem_3.Checked == false)
                {
                    chk_box_mem_3.Checked = true;
                    chk_box_mem_3_CheckedChanged(this, null);
                    chk_box_mem_5.Checked = false;

                    return;
                }

                else if (chk_box_mem_4.Checked == false)
                {
                    chk_box_mem_4.Checked = true;
                    chk_box_mem_4_CheckedChanged(this, null);
                    chk_box_mem_5.Checked = false;

                    return;
                }
                change_applicant_color(txtapplicantfullname5, txtApplicantNationality5, txtApplicantaddress5, txtApplicantcontactno5, txtApplicantemailid5, active);
                txtapplicantfullname5.ReadOnly = false;
                txtApplicantcontactno5.ReadOnly = false;
                txtApplicantemailid5.ReadOnly = false;
                txtApplicantNationality5.ReadOnly = false;
                txtApplicantaddress5.ReadOnly = false;
                txtapplicantfullname5.Focus();
            }
            else
            {
                change_applicant_color(txtapplicantfullname5, txtApplicantNationality5, txtApplicantaddress5, txtApplicantcontactno5, txtApplicantemailid5, passive);
                txtapplicantfullname5.ReadOnly = true;
                txtApplicantcontactno5.ReadOnly = true;
                txtApplicantemailid5.ReadOnly = true;
                txtApplicantNationality5.ReadOnly = true;
                txtApplicantaddress5.ReadOnly = true;

                txtapplicantfullname5.Text = "";
                txtApplicantcontactno5.Text = "";
                txtApplicantemailid5.Text = "";
                txtApplicantNationality5.Text = "";
                txtApplicantaddress5.Text = "";
            }
        }


        protected void chk_box_Inventor_2_CheckedChanged(object sender, EventArgs e)
        {
            if (chk_box_Inventor_2.Checked == true)
            {
                change_Inventor_color(txtInventorfullname2, txtInventorNationality2, txtInventoraddress2, txtInventorcontactno2, txtInventoremailid2, active);
                txtInventorfullname2.ReadOnly = false;
                txtInventorcontactno2.ReadOnly = false;
                txtInventoremailid2.ReadOnly = false;
                txtInventorNationality2.ReadOnly = false;
                txtInventoraddress2.ReadOnly = false;
                txtInventorfullname2.Focus();
            }
            else
            {
                if (chk_box_Inventor_3.Checked == true)
                {
                    copy_Inventor_row(txtInventorfullname2, txtInventorNationality2, txtInventoraddress2, txtInventoremailid2, txtInventorcontactno2, txtInventorfullname3, txtInventorNationality3, txtInventoraddress3, txtInventoremailid3, txtInventorcontactno3);
                    chk_box_Inventor_2.Checked = true;
                    chk_box_Inventor_2_CheckedChanged(this, null);
                    chk_box_Inventor_3.Checked = false;
                    chk_box_Inventor_3_CheckedChanged(this, null);

                    return;
                }

                change_Inventor_color(txtInventorfullname2, txtInventorNationality2, txtInventoraddress2, txtInventorcontactno2, txtInventoremailid2, passive);
                txtInventorfullname2.ReadOnly = true;
                txtInventorcontactno2.ReadOnly = true;
                txtInventoremailid2.ReadOnly = true;
                txtInventorNationality2.ReadOnly = true;
                txtInventoraddress2.ReadOnly = true;

                txtInventorfullname2.Text = "";
                txtInventorcontactno2.Text = "";
                txtInventoremailid2.Text = "";
                txtInventorNationality2.Text = "";
                txtInventoraddress2.Text = "";
            }
        }

        protected void change_Inventor_color(TextBox t1, TextBox t2, TextBox t3, TextBox t4, TextBox t5, Color c)
        {
            t1.BackColor = c;
            t2.BackColor = c;
            t3.BackColor = c;
            t4.BackColor = c;
            t5.BackColor = c;

            if (c == active)
            {
                t1.CssClass = "txt_active";
                t2.CssClass = "txt_active";
                t3.CssClass = "txt_active";
                t4.CssClass = "txt_active";
                t5.CssClass = "txt_active";

            }
            else
            {
                t1.CssClass = null;
                t2.CssClass = null;
                t3.CssClass = null;
                t4.CssClass = null;
                t5.CssClass = null;
            }

        }
        protected void chk_box_Inventor_3_CheckedChanged(object sender, EventArgs e)
        {
            if (chk_box_Inventor_3.Checked == true)
            {
                if (chk_box_Inventor_2.Checked == false)
                {
                    chk_box_Inventor_2.Checked = true;
                    chk_box_Inventor_2_CheckedChanged(this, null);
                    chk_box_Inventor_3.Checked = false;

                    return;
                }
                change_Inventor_color(txtInventorfullname3, txtInventorNationality3, txtInventoraddress3, txtInventorcontactno3, txtInventoremailid3, active);
                txtInventorfullname3.ReadOnly = false;
                txtInventorcontactno3.ReadOnly = false;
                txtInventoremailid3.ReadOnly = false;
                txtInventorNationality3.ReadOnly = false;
                txtInventoraddress3.ReadOnly = false;
                txtInventorfullname3.Focus();
            }
            else
            {
                if (chk_box_Inventor_4.Checked == true)
                {
                    copy_Inventor_row(txtInventorfullname3, txtInventorNationality3, txtInventoraddress3, txtInventoremailid3, txtInventorcontactno3, txtInventorfullname4, txtInventorNationality4, txtInventoraddress4, txtInventoremailid4, txtInventorcontactno4);
                    chk_box_Inventor_3.Checked = true;
                    chk_box_Inventor_3_CheckedChanged(this, null);
                    chk_box_Inventor_4.Checked = false;
                    chk_box_Inventor_4_CheckedChanged(this, null);

                    return;
                }


                change_Inventor_color(txtInventorfullname3, txtInventorNationality3, txtInventoraddress3, txtInventorcontactno3, txtInventoremailid3, passive);
                txtInventorfullname3.ReadOnly = true;
                txtInventorcontactno3.ReadOnly = true;
                txtInventoremailid3.ReadOnly = true;
                txtInventorNationality3.ReadOnly = true;
                txtInventoraddress3.ReadOnly = true;

                txtInventorfullname3.Text = "";
                txtInventorcontactno3.Text = "";
                txtInventoremailid3.Text = "";
                txtInventorNationality3.Text = "";
                txtInventoraddress3.Text = "";
            }
        }
        protected void chk_box_Inventor_4_CheckedChanged(object sender, EventArgs e)
        {
            if (chk_box_Inventor_4.Checked == true)
            {
                if (chk_box_Inventor_2.Checked == false)
                {
                    chk_box_Inventor_2.Checked = true;
                    chk_box_Inventor_2_CheckedChanged(this, null);
                    chk_box_Inventor_4.Checked = false;

                    return;
                }

                else if (chk_box_Inventor_3.Checked == false)
                {
                    chk_box_Inventor_3.Checked = true;
                    chk_box_Inventor_3_CheckedChanged(this, null);
                    chk_box_Inventor_4.Checked = false;

                    return;
                }
                change_Inventor_color(txtInventorfullname4, txtInventorNationality4, txtInventoraddress4, txtInventorcontactno4, txtInventoremailid4, active);
                txtInventorfullname4.ReadOnly = false;
                txtInventorcontactno4.ReadOnly = false;
                txtInventoremailid4.ReadOnly = false;
                txtInventorNationality4.ReadOnly = false;
                txtInventoraddress4.ReadOnly = false;
                txtInventorfullname4.Focus();
            }
            else
            {

                if (chk_box_Inventor_5.Checked == true)
                {
                    copy_Inventor_row(txtInventorfullname4, txtInventorNationality4, txtInventoraddress4, txtInventoremailid4, txtInventorcontactno4, txtInventorfullname5, txtInventorNationality5, txtInventoraddress5, txtInventoremailid5, txtInventorcontactno5);
                    chk_box_Inventor_4.Checked = true;
                    chk_box_Inventor_4_CheckedChanged(this, null);
                    chk_box_Inventor_5.Checked = false;
                    chk_box_Inventor_5_CheckedChanged(this, null);

                    return;
                }


                change_Inventor_color(txtInventorfullname4, txtInventorNationality4, txtInventoraddress4, txtInventorcontactno4, txtInventoremailid4, passive);
                txtInventorfullname4.ReadOnly = true;
                txtInventorcontactno4.ReadOnly = true;
                txtInventoremailid4.ReadOnly = true;
                txtInventorNationality4.ReadOnly = true;
                txtInventoraddress4.ReadOnly = true;

                txtInventorfullname4.Text = "";
                txtInventorcontactno4.Text = "";
                txtInventoremailid4.Text = "";
                txtInventorNationality4.Text = "";
                txtInventoraddress4.Text = "";
            }
        }

        private void copy_Inventor_row(TextBox t1, TextBox t2, TextBox t3, TextBox t4, TextBox t5, TextBox s1, TextBox s2, TextBox s3, TextBox s4, TextBox s5)
        {
            t1.Text = s1.Text;
            t2.Text = s2.Text;
            t3.Text = s3.Text;
            t4.Text = s4.Text;
            t5.Text = s5.Text;

        }
        protected void chk_box_Inventor_5_CheckedChanged(object sender, EventArgs e)
        {
            if (chk_box_Inventor_5.Checked == true)
            {
                if (chk_box_Inventor_2.Checked == false)
                {
                    chk_box_Inventor_2.Checked = true;
                    chk_box_Inventor_2_CheckedChanged(this, null);
                    chk_box_Inventor_5.Checked = false;

                    return;
                }

                else if (chk_box_Inventor_3.Checked == false)
                {
                    chk_box_Inventor_3.Checked = true;
                    chk_box_Inventor_3_CheckedChanged(this, null);
                    chk_box_Inventor_5.Checked = false;

                    return;
                }

                else if (chk_box_Inventor_4.Checked == false)
                {
                    chk_box_Inventor_4.Checked = true;
                    chk_box_Inventor_4_CheckedChanged(this, null);
                    chk_box_Inventor_5.Checked = false;

                    return;
                }
                change_Inventor_color(txtInventorfullname5, txtInventorNationality5, txtInventoraddress5, txtInventorcontactno5, txtInventoremailid5, active);
                txtInventorfullname5.ReadOnly = false;
                txtInventorcontactno5.ReadOnly = false;
                txtInventoremailid5.ReadOnly = false;
                txtInventorNationality5.ReadOnly = false;
                txtInventoraddress5.ReadOnly = false;
                txtInventorfullname5.Focus();
            }
            else
            {
                change_Inventor_color(txtInventorfullname5, txtInventorNationality5, txtInventoraddress5, txtInventorcontactno5, txtInventoremailid5, passive);
                txtInventorfullname5.ReadOnly = true;
                txtInventorcontactno5.ReadOnly = true;
                txtInventoremailid5.ReadOnly = true;
                txtInventorNationality5.ReadOnly = true;
                txtInventoraddress5.ReadOnly = true;

                txtInventorfullname5.Text = "";
                txtInventorcontactno5.Text = "";
                txtInventoremailid5.Text = "";
                txtInventorNationality5.Text = "";
                txtInventoraddress5.Text = "";
            }
        }

    


    }
}