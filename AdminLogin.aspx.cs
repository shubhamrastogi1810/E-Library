using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Services.Description;
using System.Data;
using System.Data.Sql;

namespace E_Library
{
    public partial class AdminLogin : System.Web.UI.Page
    {
       

       

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            try
            {
                using (SqlConnection con = new SqlConnection("Data Source=Shubham-Rastogi;Initial Catalog=E-library;Integrated Security=True"))
                {
                   
                        string query = "select * from admin_login_tbl where A_id ='"+txtAdminID.Text.Trim()+"' and A_pass ='"+TextBox1.Text.Trim()+"'";
                        SqlCommand cmd = new SqlCommand(query, con);

                    con.Open();
                    SqlDataReader dr = cmd.ExecuteReader();
                    if(dr.HasRows)
                    {
                        Response.Write("<script>alert('Login Successful');</script> ");
                        

                    }
                    else
                    {
                        Response.Write("<script>alert('Login unsuccessful'); </script>");
                    }


                    }
            }
            catch(Exception ex)
            { 
                Response.Write("Error Occured. "+ex.Message);
            }
        }

       
    }
}