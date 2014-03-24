using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Collections.Specialized;
using System.Text;
using System.Data.SqlClient;

namespace gtu_pde
{

    public partial class form1 : System.Web.UI.Page
    {
       
    private void SetInitialRow()
    {
        DataTable dt = new DataTable();
        DataRow dr = null;
        dt.Columns.Add(new DataColumn("FullName", typeof(string)));
        dt.Columns.Add(new DataColumn("Nationality", typeof(string)));
        dt.Columns.Add(new DataColumn("Address", typeof(string)));
        dt.Columns.Add(new DataColumn("EmailId", typeof(string)));
        dt.Columns.Add(new DataColumn("ContactNo", typeof(string)));
        dr = dt.NewRow();
        dr["FullName"] = string.Empty;
        dr["Nationality"] = string.Empty;
        dr["Address"] = string.Empty;
        dr["EmailId"] = string.Empty;
        dr["ContactNo"] = string.Empty;
        dt.Rows.Add(dr);
        

        //Store the DataTable in ViewState
        ViewState["CurrentTable"] = dt;

        Gridview1.DataSource = dt;
        Gridview1.DataBind();
    }
    private void AddNewRowToGrid()
    {
        int rowIndex = 0;

        if (ViewState["CurrentTable"] != null)
        {
            DataTable dtCurrentTable = (DataTable)ViewState["CurrentTable"];
            DataRow drCurrentRow = null;
            if (dtCurrentTable.Rows.Count > 0)
            {
                for (int i = 1; i <= dtCurrentTable.Rows.Count; i++)
                {
                    //extract the TextBox values
                    TextBox box1 = (TextBox)Gridview1.Rows[rowIndex].Cells[1].FindControl("TextBox1");
                    TextBox box2 = (TextBox)Gridview1.Rows[rowIndex].Cells[2].FindControl("TextBox2");
                    TextBox box3 = (TextBox)Gridview1.Rows[rowIndex].Cells[3].FindControl("TextBox3");
                    TextBox box4 = (TextBox)Gridview1.Rows[rowIndex].Cells[4].FindControl("TextBox4");
                    TextBox box5 = (TextBox)Gridview1.Rows[rowIndex].Cells[5].FindControl("TextBox5");

                    drCurrentRow = dtCurrentTable.NewRow();

                    drCurrentRow["FullName"] = box1.Text;
                    drCurrentRow["Nationality"] = box2.Text;
                    drCurrentRow["Address"] = box3.Text;
                    drCurrentRow["EmailId"] = box4.Text;
                    drCurrentRow["ContactNo"] = box5.Text;

                    rowIndex++;
                }
                dtCurrentTable.Rows.Add(drCurrentRow);
                ViewState["CurrentTable"] = dtCurrentTable;

                Gridview1.DataSource = dtCurrentTable;
                Gridview1.DataBind();
            }
        }
        else
        {
            Response.Write("ViewState is null");
        }

        //Set Previous Data on Postbacks
        SetPreviousData();
    }
    private void SetPreviousData()
    {
        int rowIndex = 0;
        if (ViewState["CurrentTable"] != null)
        {
            DataTable dt = (DataTable)ViewState["CurrentTable"];
            if (dt.Rows.Count > 0)
            {
                for (int i = 1; i < dt.Rows.Count; i++)
                {
                    TextBox box1 = (TextBox)Gridview1.Rows[rowIndex].Cells[1].FindControl("TextBox1");
                    TextBox box2 = (TextBox)Gridview1.Rows[rowIndex].Cells[2].FindControl("TextBox2");
                    TextBox box3 = (TextBox)Gridview1.Rows[rowIndex].Cells[3].FindControl("TextBox3");
                    TextBox box4 = (TextBox)Gridview1.Rows[rowIndex].Cells[4].FindControl("TextBox4");
                    TextBox box5 = (TextBox)Gridview1.Rows[rowIndex].Cells[5].FindControl("TextBox5");
                    box1.Text = dt.Rows[i]["FullName"].ToString();
                    box2.Text = dt.Rows[i]["Nationality"].ToString();
                    box3.Text = dt.Rows[i]["Address"].ToString();
                    box4.Text = dt.Rows[i]["EmailId"].ToString();
                    box5.Text = dt.Rows[i]["ContactNo"].ToString();

                    rowIndex++;

                }
            }
            // ViewState["CurrentTable"] = dt;

        }
    }

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            SetInitialRow();
        }
    }
    protected void ButtonAdd_Click(object sender, EventArgs e)
    {
        AddNewRowToGrid();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        int rowIndex = 0;
        StringCollection sc = new StringCollection();
        if (ViewState["CurrentTable"] != null)
        {
            DataTable dtCurrentTable = (DataTable)ViewState["CurrentTable"];
            if (dtCurrentTable.Rows.Count > 0)
            {
                for (int i = 1; i <= dtCurrentTable.Rows.Count; i++)
                {
                    //extract the TextBox values
                    TextBox box1 = (TextBox)Gridview1.Rows[rowIndex].Cells[1].FindControl("TextBox1");
                    TextBox box2 = (TextBox)Gridview1.Rows[rowIndex].Cells[2].FindControl("TextBox2");
                    TextBox box3 = (TextBox)Gridview1.Rows[rowIndex].Cells[3].FindControl("TextBox3");
                    TextBox box4 = (TextBox)Gridview1.Rows[rowIndex].Cells[4].FindControl("TextBox4");
                    TextBox box5 = (TextBox)Gridview1.Rows[rowIndex].Cells[5].FindControl("TextBox5");
                    //get the values from the TextBoxes
                    //then add it to the collections with a comma "," as the delimited values
                    sc.Add(box1.Text + "," + box2.Text + "," + box3.Text+","+box4.Text+","+box5.Text);
                    rowIndex++;
                }
                //Call the method for executing inserts
                InsertRecords(sc);
            }
        }
    }
    //A method that returns a string which calls the connection string from the web.config
    private string GetConnectionString()
    {
        //"DBConnection" is the name of the Connection String
        //that was set up from the web.config file
        return System.Configuration.ConfigurationManager.ConnectionStrings["DBConnection"].ConnectionString;
    }
    //A method that Inserts the records to the database
    private void InsertRecords(StringCollection sc)
    {
        SqlConnection conn = new SqlConnection(GetConnectionString());
        StringBuilder sb = new StringBuilder(string.Empty);
        string[] splitItems = null;
        foreach (string item in sc)
        {

            const string sqlStatement = "INSERT INTO SampleTable (FullName,Nationality,Address,EmailId,ContactNo) VALUES";
            if (item.Contains(","))
            {
                splitItems = item.Split(",".ToCharArray());
                sb.AppendFormat("{0}('{1}','{2}','{3}','{4}','{5}'); ", sqlStatement, splitItems[0], splitItems[1], splitItems[2], splitItems[3], splitItems[4]);
            }

        }

        try
        {
            conn.Open();
            SqlCommand cmd = new SqlCommand(sb.ToString(), conn);
            cmd.CommandType = CommandType.Text;
            cmd.ExecuteNonQuery();

            Page.ClientScript.RegisterClientScriptBlock(typeof(Page), "Script", "alert('Records Successfuly Saved!');", true);

        }
        catch (System.Data.SqlClient.SqlException ex)
        {
            string msg = "Insert Error:";
            msg += ex.Message;
            throw new Exception(msg);

        }
        finally
        {
            conn.Close();
        }
    }
    // Hide the Remove Button at the last row of the GridView
    protected void Gridview1_RowCreated(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
              DataTable  dt = (DataTable)ViewState["CurrentTable"];
              LinkButton lb = (LinkButton)e.Row.FindControl("LinkButton1");
              if (lb != null)
              {
                  if (dt.Rows.Count > 1)
                  {
                      if (e.Row.RowIndex == dt.Rows.Count - 1)
                      {
                          lb.Visible = false;
                      }
                  }
                  else
                  {
                      lb.Visible = false;
                  }
              }
        }
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        LinkButton lb = (LinkButton)sender;
        GridViewRow gvRow = (GridViewRow) lb.NamingContainer;
        int rowID = gvRow.RowIndex + 1;
        if (ViewState["CurrentTable"] != null)
        {
          DataTable  dt = (DataTable)ViewState["CurrentTable"];
          if (dt.Rows.Count > 1)
          {
              if (gvRow.RowIndex < dt.Rows.Count -1)
              {
                  //Remove the Selected Row data
                  dt.Rows.Remove(dt.Rows[rowID]);
              }
          }
            //Store the current data in ViewState for future reference
            ViewState["CurrentTable"] = dt;
            //Re bind the GridView for the updated data
            Gridview1.DataSource = dt;
            Gridview1.DataBind();
        }

        //Set Previous Data on Postbacks
        SetPreviousData();
    }
        protected void btn_next_form_Click(object sender, EventArgs e)
        {
            Response.Redirect("Form1(2).aspx");
        }

       
}
}