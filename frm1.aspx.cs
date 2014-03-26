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

public partial class frm1 : System.Web.UI.Page
{



    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            SetInitialRow();
        }
    }

    private void SetInitialRow()
    {
        DataTable dt = new DataTable();
        DataRow dr = null;
        dt.Columns.Add(new DataColumn("RowNumber", typeof(string)));
        dt.Columns.Add(new DataColumn("FullName", typeof(string)));
        dt.Columns.Add(new DataColumn("Nationality", typeof(string)));
        dt.Columns.Add(new DataColumn("Address", typeof(string)));
        dt.Columns.Add(new DataColumn("EmailId", typeof(string)));
        dt.Columns.Add(new DataColumn("ContactNo.", typeof(string)));
        dr = dt.NewRow();
        dr["RowNumber"] = 1;
        dr["FullName"] = string.Empty;
        dr["Nationality"] = string.Empty;
        dr["Address"] = string.Empty;
        dr["EmailId"] = string.Empty;
        dr["ContactNo."] = string.Empty;
        dt.Rows.Add(dr);
        //dr = dt.NewRow();

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
                    drCurrentRow["RowNumber"] = i + 1;

                    dtCurrentTable.Rows[i - 1]["FullName"] = box1.Text;
                    dtCurrentTable.Rows[i - 1]["Nationality"] = box2.Text;
                    dtCurrentTable.Rows[i - 1]["Address"] = box3.Text;
                    dtCurrentTable.Rows[i - 1]["EmailId"] = box4.Text;
                    dtCurrentTable.Rows[i - 1]["ContactNo."] = box5.Text;

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
                for (int i = 0; i < dt.Rows.Count; i++)
                {
                    TextBox box1 = (TextBox)Gridview1.Rows[rowIndex].Cells[1].FindControl("TextBox1");
                    TextBox box2 = (TextBox)Gridview1.Rows[rowIndex].Cells[2].FindControl("TextBox2");
                    TextBox box3 = (TextBox)Gridview1.Rows[rowIndex].Cells[3].FindControl("TextBox3");
                    TextBox box4 = (TextBox)Gridview1.Rows[rowIndex].Cells[4].FindControl("TextBox3");
                    TextBox box5 = (TextBox)Gridview1.Rows[rowIndex].Cells[5].FindControl("TextBox3");

                    box1.Text = dt.Rows[i]["FullName"].ToString();
                    box2.Text = dt.Rows[i]["Nationality"].ToString();
                    box3.Text = dt.Rows[i]["Address"].ToString();
                    box4.Text = dt.Rows[i]["EmailId"].ToString();
                    box5.Text = dt.Rows[i]["ContactNo."].ToString();

                    rowIndex++;
                }
            }
        }
    }

  

    protected void ButtonAdd_Click(object sender, EventArgs e)
    {

        this.Panel1.Style.Add("position", "relative");
        this.Panel1.Style.Add("top", "100px");
        this.Panel1.Style.Add("left", "100px");

        Label l1 = new Label();
        l1.Text = "Text1With Many words of string in characters";
        Panel1.Controls.Add(l1);

        AddNewRowToGrid();
    }
    protected void Adrow_click(object sender,EventArgs e)
    {
        AddNewRowToGrid();
    }


    protected void BindGrid()
    {
        Gridview1.DataSource = ViewState["CurrentTable"] as DataTable;
        Gridview1.DataBind();
    }


    protected void OnRowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        DataTable dtA = (DataTable)ViewState["CurrentTable"];
        if (dtA.Rows.Count > 1)
        {
            int index = Convert.ToInt32(e.RowIndex);
            DataTable dt = ViewState["CurrentTable"] as DataTable;
            dt.Rows[index].Delete();
            ViewState["CurrentTable"] = dt;
            BindGrid();
        }

    }










}