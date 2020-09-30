using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace E_Library
{
    public partial class UserLogin : System.Web.UI.Page
    {
        

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            try
            {
                using (SqlConnection con = new SqlConnection("Data Source=Shubham-Rastogi;Initial Catalog=E-library;Integrated Security=True"))
                {

                    string query = "select * from Member_master_login_table where member_id ='" + txtMemberID.Text.Trim() + "' and password ='" + TextBox1.Text.Trim() + "'";
                    SqlCommand cmd = new SqlCommand(query, con);

                    con.Open();
                    SqlDataReader dr = cmd.ExecuteReader();
                    if (dr.HasRows)
                    {
                        Response.Write("<script>alert('Login Successful');</script> ");


                    }
                    else
                    {
                        Response.Write("<script>alert('Login unsuccessful'); </script>");
                    }


                }
            }
            catch (Exception ex)
            {
                Response.Write("Error Occured. " + ex.Message);
            }
        }
    }
}