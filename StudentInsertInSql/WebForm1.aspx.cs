using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Diagnostics.Eventing.Reader;
using System.Linq;
using System.Security.Policy;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;
using static System.Net.Mime.MediaTypeNames;

namespace StudentInsertInSql
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["sConnection"].ConnectionString;
        int ID;
        protected void Page_Load(object sender, EventArgs e)
        {
            updat_b.Visible = false;
            create_acu.Visible = true;
            if (!IsPostBack)
            {

                DataGridView();
            }
        }

        public void DataGridView()
        {
            SqlDataAdapter sda = new SqlDataAdapter("show_student",strcon);
            sda.SelectCommand.CommandType = CommandType.StoredProcedure;
            //DataSet ds = new DataSet();
         
            DataTable dt= new DataTable();
            sda.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

        protected void create_acu_Click(object sender, EventArgs e)
        {
            
            //create new sqlconnection and connection to database by using connection string from web.config file
            SqlConnection con = new SqlConnection(strcon);
            //SqlCommand cmd = new SqlCommand("Insert Into user_table values('"+ fname.Text + "','"+lname.Text +"','" + pass.Text + "'," +
            //    "'"+ dbirth.Text + "', '"+ email.Text +"', '"+phone.Text+"', '"+state.SelectedItem.Text+"' )", con);
            SqlCommand cmd = new SqlCommand("insert_student", con);

            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@name",name.Text);
            cmd.Parameters.AddWithValue("@fname",faname.Text);
            cmd.Parameters.AddWithValue("@mname", mname.Text);
            cmd.Parameters.AddWithValue("@email", email.Text);
            cmd.Parameters.AddWithValue("@phone", email.Text);
            cmd.Parameters.AddWithValue("@gender", gender.SelectedItem.Text);//redio
            cmd.Parameters.AddWithValue("@addr", addr.Text);//Text arrey
            cmd.Parameters.AddWithValue("@state", state.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@code", code.Text);
            cmd.Parameters.AddWithValue("@blood", blood.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@courses", courses.SelectedItem.Text);//redio
            con.Open();

            int k = cmd.ExecuteNonQuery();

            if (k != 0)
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Record Inserted Succesfully into the Database')", true);
              //  DataGridView();
                Page.Response.Redirect(Page.Request.Url.ToString(), true);
            }
            con.Close();


}

        
        

        protected void updat_b_Click1(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(strcon);
            //SqlCommand cmd = new SqlCommand("Insert Into user_table values('"+ fname.Text + "','"+lname.Text +"','" + pass.Text + "'," +
            //    "'"+ dbirth.Text + "', '"+ email.Text +"', '"+phone.Text+"', '"+state.SelectedItem.Text+"' )", con);
            SqlCommand cmd = new SqlCommand("update_s", con);

            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@id", HDID.Value);
            cmd.Parameters.AddWithValue("@name", name.Text);
            cmd.Parameters.AddWithValue("@fname", faname.Text);
            cmd.Parameters.AddWithValue("@mname", mname.Text);
            cmd.Parameters.AddWithValue("@email", email.Text);
            cmd.Parameters.AddWithValue("@phone", phone.Text);
            cmd.Parameters.AddWithValue("@gender", gender.SelectedItem.Text);//redio
            cmd.Parameters.AddWithValue("@addr", addr.Text);//Text arrey
            cmd.Parameters.AddWithValue("@state", state.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@code", code.Text);
            cmd.Parameters.AddWithValue("@blood", blood.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@course", courses.SelectedItem.Text);//redio
            con.Open();

                cmd.ExecuteNonQuery();
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Record Update Succesfully into the Database')", true);
            Page.Response.Redirect(Page.Request.Url.ToString(), true);
            DataGridView();
            
            con.Close();
        }

        //protected void edit_b_Click1(object sender, System.Web.UI.WebControls.GridViewUpdateEventArgs e)
        //{
        //    int rowind = ((GridViewRow)(sender as Control).NamingContainer).RowIndex;


             
        //        // txtdeptname.Text = row.Cells[2].Text;
        //        //txtdeptcode.Text = row.Cells[3].Text;
        //        //GridView1.EditIndex = -1;
        //        //GridView1.EditIndex = e.NewEditIndex;
        //        name.Text = GridView1.Rows[e.RowIndex].FindControl("cname").ToString();
        //        faname.Text = GridView1.Rows[e.RowIndex].FindControl("cfname").ToString();
        //        mname.Text = GridView1.Rows[e.RowIndex].FindControl("cmname").ToString();
        //        email.Text = GridView1.Rows[e.RowIndex].FindControl("cfname").ToString();
        //        phone.Text = GridView1.Rows[e.RowIndex].FindControl("cphone").ToString();
        //        gender.SelectedItem.Text = GridView1.Rows[e.RowIndex].FindControl("cgender").ToString();   
        //        addr.Text = GridView1.Rows[e.RowIndex].FindControl("caddr").ToString();
        //        state.SelectedItem.Text = GridView1.Rows[e.RowIndex].FindControl("cstate").ToString();
        //        code.Text = GridView1.Rows[e.RowIndex].FindControl("ccode").ToString();
        //        blood.Text = GridView1.Rows[e.RowIndex].FindControl("cblood").ToString();
        //        courses.SelectedItem.Text = GridView1.Rows[e.RowIndex].FindControl("ccourses").ToString();
               

        //    updat_b.Visible = true;
        //    create_acu.Visible = false;

        //    //name.Text = GridView1.SelectedRow.Cells[1].Text.ToString();
        //    //    faname.Text = GridView1.SelectedRow.Cells[2].Text.ToString();
        //    //    mname.Text = GridView1.SelectedRow.Cells[3].Text.ToString();
        //    //    email.Text = GridView1.SelectedRow.Cells[4].Text.ToString();
        //    //    phone.Text = GridView1.SelectedRow.Cells[5].Text.ToString();
        //    //    //gender.SelectedItem.Text = GridView.Rows[rowind].Cells[1].Text;
        //    //    //addr.Text = GridView.Rows[rowind].Cells[1].Text;
        //    //    //state.SelectedItem.Text = GridView.Rows[rowind].Cells[1].Text;
        //    //    //code.Text = GridView.Rows[rowind].Cells[1].Text;
        //    //    //blood.Text = GridView.Rows[rowind].Cells[1].Text;
        //    //    //courses.SelectedItem.Text = GridView.Rows[rowind].Cells[1].Text;




            
        //}

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
           
            ID = Convert.ToInt32(e.CommandArgument);
            HDID.Value = ID.ToString();


            if (e.CommandName == "_MODIFY")
            {
                updat_b.Visible = true;
                create_acu.Visible = false;
                SqlConnection con = new SqlConnection(strcon);
               
                SqlCommand cmd = new SqlCommand("PRC_Get_StudentData_IDwise", con);

                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@ID", ID);
                con.Open();
                cmd.ExecuteReader();
                con.Close();
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                //DataSet ds = new DataSet();

                DataTable dt = new DataTable();
                sda.Fill(dt);
      //          name.Text = dt.Rows[0]["name"].ToString();
                name.Text = dt.Rows[0]["name"].ToString();
                faname.Text = dt.Rows[0]["fname"].ToString();
                mname.Text = dt.Rows[0]["mname"].ToString();
                email.Text = dt.Rows[0]["email"].ToString();
                phone.Text = dt.Rows[0]["phone"].ToString();
                if (dt.Rows[0]["gender"].ToString() == "Male") {
                    gender.SelectedIndex = 0;
                }
                else {
                    gender.SelectedIndex = 1;
                }
                addr.Text = dt.Rows[0]["addr"].ToString();
                if (dt.Rows[0]["state"].ToString() == "Delhi")
                {
                    state.SelectedIndex = 0;
                }
                else if (dt.Rows[0]["state"].ToString() == "West Bengal")
                {
                    state.SelectedIndex = 1;
                }
                else if (dt.Rows[0]["state"].ToString() == "Biher")
                {
                    state.SelectedIndex = 2;
                }
                else
                {
                    state.SelectedIndex = 3;
                }
                code.Text = dt.Rows[0]["code"].ToString();


                // blood.SelectedItem.Value = dt.Rows[0]["blood"].ToString();
                if (dt.Rows[0]["blood"].ToString() == "A+")
                {
                    blood.SelectedIndex = 0;

                }
                else if (dt.Rows[0]["blood"].ToString() == "A-")
                {
                    blood.SelectedIndex = 1;
                    //blood.SelectedItem.Value=dt.Rows[0]["blood"].ToString() ;
                }
                else if (dt.Rows[0]["blood"].ToString() == "B+")
                {
                    blood.SelectedIndex = 2;
                }
                else if (dt.Rows[0]["blood"].ToString() == "B-") { blood.SelectedIndex = 3; }
                else if (dt.Rows[0]["blood"].ToString() == "O+") { blood.SelectedIndex = 4; }
                else if (dt.Rows[0]["blood"].ToString() == "O-") { blood.SelectedIndex = 5; }
                else if (dt.Rows[0]["blood"].ToString() == "AB+") { blood.SelectedIndex = 6; }
                else { blood.SelectedIndex = 7; }




                if (dt.Rows[0]["courses"].ToString()== "App development") { courses.SelectedIndex = 0; }
                else if (dt.Rows[0]["courses"].ToString() == "Marketing") { courses.SelectedIndex = 1; }
                else if (dt.Rows[0]["courses"].ToString() == "Editing") { courses.SelectedIndex = 2; }
                else if (dt.Rows[0]["courses"].ToString() == "Web Development") { courses.SelectedIndex = 3; }
            }
            else if (e.CommandName=="_DELETE")
            {
                SqlConnection con = new SqlConnection(strcon);

                SqlCommand cmd = new SqlCommand("STUDENT_DATA_DELETE", con);

                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@ID", ID);
                con.Open();
                cmd.ExecuteReader();
                con.Close();
                Page.Response.Redirect(Page.Request.Url.ToString(), true);
            }
        }
    }
}