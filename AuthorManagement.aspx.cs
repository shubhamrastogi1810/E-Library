using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace E_Library
{
    public partial class AuthorManagement : System.Web.UI.Page
    {
        
        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                using (SqlConnection con = new SqlConnection("Data Source=Shubham-Rastogi;Initial Catalog=E-library;Integrated Security=True"))
                {

                    string query = "select author_name from author_management_tbl  where author_id ='" + auth_no.Text.Trim() + "'";
                    SqlCommand cmd = new SqlCommand(query, con);

                    con.Open();
                    SqlDataReader dr = cmd.ExecuteReader();
                    string athr;
                    if(dr.HasRows)
                    {
                        while (dr.Read())
                        {
                            athr = dr["author_name"].ToString();
                            auth_name.Text = athr; 
                        }
                         
                        
                    }
                    else
                    {
                        Response.Write("<script>alert('No Author Found or Invalid ID Entered');</script>");
                    }

                    
                    con.Close();
                }
            }
            catch(Exception ex)
            {
                Response.Write("Error Occured."+ex.Message);
            }

        }

        protected void btn_add_Click(object sender, EventArgs e)
        {
            try
            {
                using (SqlConnection con = new SqlConnection("Data Source=Shubham-Rastogi;Initial Catalog=E-library;Integrated Security=True"))
                {

                    string query = "insert into author_management_tbl values('"+auth_no.Text.Trim()+"','"+auth_name.Text.Trim()+"')";
                    SqlCommand cmd = new SqlCommand(query, con);

                    con.Open();

                    int rows = cmd.ExecuteNonQuery();
                     
                     if(rows>0)
                    {
                        Response.Write("<script>alert('Author Added Successfully')</script>");
                        GridView1.DataBind();
                    }
                     else
                    {
                        Response.Write("<script>alert('Something went Wrong! Please try again')</script>");
                    }
                      

                    con.Close();
                }
            }
            catch (Exception ex)
            {
                Response.Write("Error Occured." + ex.Message);
            }
        }

        protected void btn_update_Click(object sender, EventArgs e)
        {
            try
            {
                using (SqlConnection con = new SqlConnection("Data Source=Shubham-Rastogi;Initial Catalog=E-library;Integrated Security=True"))
                {

                    string query = "UPDATE author_management_tbl  SET author_name ='"+auth_name.Text.Trim()+"' where author_id ='"+auth_no.Text.Trim()+"'";
                    SqlCommand cmd = new SqlCommand(query, con);

                    con.Open();

                    int rows = cmd.ExecuteNonQuery();

                    if (rows > 0)
                    {
                        Response.Write("<script>alert('Author Updated Successfully')</script>");
                        GridView1.DataBind();
                    }
                    else
                    {
                        Response.Write("<script>alert('Something went Wrong! Please try again')</script>");
                    }
                    con.Close();
                }
            }
            catch (Exception ex)
            {
                Response.Write("Error Occured." + ex.Message);
            }
        }

        protected void btn_delete_Click(object sender, EventArgs e)
        {
            try
            {
                using (SqlConnection con = new SqlConnection("Data Source=Shubham-Rastogi;Initial Catalog=E-library;Integrated Security=True"))
                {

                    string query = "DELETE from  author_management_tbl  where author_id ='" + auth_no.Text.Trim() + "'";
                    SqlCommand cmd = new SqlCommand(query, con);

                    con.Open();

                    int rows = cmd.ExecuteNonQuery();

                    if (rows > 0)
                    {
                        Response.Write("<script>alert('Author Deleted Successfully')</script>");
                        GridView1.DataBind();
                    }
                    else
                    {
                        Response.Write("<script>alert('Something went Wrong! Please try again')</script>");
                    }
                    con.Close();
                }
            }
            catch (Exception ex)
            {
                Response.Write("Error Occured." + ex.Message);
            }
        }
    }
}