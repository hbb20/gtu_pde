using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace gtu_pde
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label enrol = new Label();
            enrol.Text = "Enrollment No.";
            enrol.Style[HtmlTextWriterStyle.Position] = "Relative";
            enrol.Style[HtmlTextWriterStyle.Top] = "20px";
            enrol.Style[HtmlTextWriterStyle.Left] = "20px";

            Label Name = new Label();
            Name.Text = "Name";
            Name.Style[HtmlTextWriterStyle.Position] = "Relative";
            Name.Style[HtmlTextWriterStyle.Top] = "20px";
            Name.Style[HtmlTextWriterStyle.Left] = "90px";


            Label status = new Label();
            status.Text = "Status";
            status.Style[HtmlTextWriterStyle.Position] = "Relative";
            status.Style[HtmlTextWriterStyle.Top] = "20px";
            status.Style[HtmlTextWriterStyle.Left] = "240px";

            Panel1.Controls.Add(enrol);
            Panel1.Controls.Add(Name);
            Panel1.Controls.Add(status );
            for (int i = 1; i <= 1; i++)
            {
                Label lblEnrollNo = new Label();
                lblEnrollNo.Text = "12113293028";
                lblEnrollNo.Style[HtmlTextWriterStyle.Position] = "Relative";
                lblEnrollNo.Style[HtmlTextWriterStyle.Top] = "50px";
                lblEnrollNo.Style[HtmlTextWriterStyle.Left] = "20px";
                Panel1.Controls.Add(lblEnrollNo);

                Label lblName = new Label();
                lblName.Text = "hakjkd";
                lblName.Style[HtmlTextWriterStyle.Position] = "Relative";
                lblName.Style[HtmlTextWriterStyle.Top] = "50px";
                lblName.Style[HtmlTextWriterStyle.Left] = "50px";
                Panel1.Controls.Add(lblName);

                LinkButton myLabel = new LinkButton();
                myLabel.Text = "Confirm";
                myLabel.Style[HtmlTextWriterStyle.Position] = "Relative";
                myLabel.Style[HtmlTextWriterStyle.Top] = "50px";
                myLabel.Style[HtmlTextWriterStyle.Left ] = "100px";
                Panel1.Controls.Add(myLabel);

                LinkButton myLabel1 = new LinkButton();
                myLabel1.Text = "Reject";
                myLabel1.Style[HtmlTextWriterStyle.Position] = "Relative";
                myLabel1.Style[HtmlTextWriterStyle.Top] = "50px";
                myLabel1.Style[HtmlTextWriterStyle.Left] = "160px";
                Panel1.Controls.Add(myLabel1);
                
              ////  LinkButton link = new LinkButton();
              ////  link.Text = "Click me...";
              ////  link.ID = "LinkButtonTest";
              //////  link.Click += LinkButtonTest_Click;
              ////  Panel1.Controls.Add(link);
           
            }

        }
    }
}