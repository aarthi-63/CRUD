using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CRUD
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                EmployeeList();
            }
        }
        //String cs = "Data Source=LAPTOP-OJHED03R\\SQLEXPRESS;Initial Catalog=CRUD;Integrated Security=True";
        SqlConnection con = new SqlConnection("Data Source=LAPTOP-OJHED03R\\SQLEXPRESS;Initial Catalog=CRUD;Integrated Security=True");
        
        //insert record
        protected void Button1_Click(object sender, EventArgs e)
        {
            int e_id = int.Parse(id.Text);
            String e_name = name.Text;
            String e_city = city.Text;
            String e_sex = RadioButtonList1.SelectedValue;
            String e_no = no.Text;
            String e_des = DropDownList1.SelectedValue;
            con.Open();
            String idcheck = id.Text;
            SqlCommand cmdcheck = new SqlCommand("select convert(varchar(10),id) from Employee_Details where convert(varchar(10),id)=@emp_id", con);
            cmdcheck.Parameters.AddWithValue("@emp_id", idcheck);
            String check =(String)cmdcheck.ExecuteScalar();
            con.Close();
            if (check == idcheck)
            {
                Label7.Text ="Employee with this ID already exist";
            }
            else
            {
                con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "Insert into Employee_Details values (@emp_id,@emp_name,@emp_city,@emp_sex,@emp_no,@emp_des)";
            cmd.Connection = con;
            cmd.Parameters.AddWithValue("@emp_id", e_id);
            cmd.Parameters.AddWithValue("@emp_name", e_name);
            cmd.Parameters.AddWithValue("@emp_city", e_city);
            cmd.Parameters.AddWithValue("@emp_sex", e_sex);
            cmd.Parameters.AddWithValue("@emp_no", e_no);
            cmd.Parameters.AddWithValue("@emp_des", e_des);
            int count = cmd.ExecuteNonQuery();
            con.Close();
            if (count > 0)
            {
                Label7.Text = ($"{count} row inserted successfully");
            }
            else
            {
                Label7.Text = ("Not inserted");
            }
            EmployeeList();
            }
        }

        //gridview record(table representation)
        void EmployeeList()
        {
            SqlCommand cmd = new SqlCommand("select * from Employee_Details", con);
            SqlDataAdapter sd = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sd.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

        //update record from table
        protected void Button2_Click(object sender, EventArgs e)
        {
            int e_id = int.Parse(id.Text);
            String e_name = name.Text;
            String e_city = city.Text;
            String e_sex = RadioButtonList1.SelectedValue;
            String e_no = no.Text;
            String e_des = DropDownList1.SelectedValue;
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "update Employee_Details set name=@emp_name,city=@emp_city,sex=@emp_sex,no=@emp_no,designation=@emp_des where id=@emp_id";
            cmd.Connection = con;
            cmd.Parameters.AddWithValue("@emp_id", e_id);
            cmd.Parameters.AddWithValue("@emp_name", e_name);
            cmd.Parameters.AddWithValue("@emp_city", e_city);
            cmd.Parameters.AddWithValue("@emp_sex", e_sex);
            cmd.Parameters.AddWithValue("@emp_no", e_no);
            cmd.Parameters.AddWithValue("@emp_des", e_des);
            int count = cmd.ExecuteNonQuery();
            con.Close();
            if (count > 0)
            {
                Label7.Text = ($"{count} row updated successfully");
            }
            else
            {
                Label7.Text=("Given id doesn't exist.");
            }
            EmployeeList();
        }

        //delete record from table
        protected void Button3_Click(object sender, EventArgs e)
        {
            int e_id = int.Parse(id.Text);
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "delete from Employee_Details where id=@emp_id";
            cmd.Connection = con;
            cmd.Parameters.AddWithValue("@emp_id", e_id);
            int count = cmd.ExecuteNonQuery();
            con.Close();
            if (count > 0)
            {
                Label7.Text = ($"{count} row deleted successfully.");
            }
            else
            {
                Label7.Text=("Given id doesn't exist.");
            }
            EmployeeList();
        }

        //get particular row from database
        protected void Button4_Click(object sender, EventArgs e)
        {
            int e_id = int.Parse(id.Text);
            con.Open();
            String idcheck = id.Text;
            SqlCommand cmdcheck = new SqlCommand("select convert(varchar(10),id) from Employee_Details where convert(varchar(10),id)=@emp_id", con);
            cmdcheck.Parameters.AddWithValue("@emp_id", idcheck);
            String check=(String)cmdcheck.ExecuteScalar();
            con.Close();
            if (check == idcheck)
            {
                con.Open();
                SqlCommand cmd = new SqlCommand();
                cmd.CommandText = "select * from Employee_Details where id=@emp_id";
                cmd.Connection = con;
                cmd.Parameters.AddWithValue("@emp_id", e_id);
                GridView1.DataSource = cmd.ExecuteReader();
                GridView1.DataBind();
                con.Close();
                Label7.Text = "Your requested employee details displayed";
            }
            else
            {
                Label7.Text = "Given ID does not exist in the database.";
            }
        }
    }
}