<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AuthorManagement.aspx.cs" Inherits="E_Library.AuthorManagement" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 103px;
            height: 89px;
        }
        
        .auto-style2 {
            width: 238px;
        }
        
    </style>
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="container mt-5">
            <div class="card-columns d-flex justify-content-center">
                    <div class="card p-3">
                            <div class="row ">
                                    <div class="col text-center">
                                         <h2>Author Details</h2>
                                         <img src="Images/writer.png" class="auto-style1" />
                                    </div>
                            </div>
                            
                            
                            <div class="row">
                                <div class="col text-center">
                                    <hr />
                                </div>
                            </div>
                             
                          <div class="row">
                              <div  class="col" >
                                   <table class="table-responsive "> 
                                       <tr>
                                            <td style="text-align:left" class="auto-style2">Author Id: </td>
                                            <td style="text-align:left">Author Name: </td>
                                       </tr>
                                      
                                       
                                       <tr>
                                           <td class="auto-style2" >
                                               <asp:TextBox ID="auth_no" runat="server" CssClass="auto-style4" width="80px"></asp:TextBox>
                                               <asp:Button ID="Button1" runat="server" Text="GO" CssClass="btn btn-success" OnClick="Button1_Click"/>
                                            </td>

                                           <td>
                                                    <asp:TextBox ID="auth_name" runat="server" CssClass="auto-style4" Width="179px"  ></asp:TextBox>
                                           </td>
                                       </tr>


                                      
                                       
                                      
                                   </table>
                              </div>
                        </div>  
                        
                        
                        <div class="row">
                                <div class="col text-center">
                                    <hr />
                                </div>
                            </div>
                        
                        <div class="row ">
                           
                                <asp:Button ID="btn_add" runat="server" CssClass="btn btn-primary " style="margin-right:30px; margin-left:15px;  border-radius:5px; padding:10px; width:100px" text="Add" OnClick="btn_add_Click" />
                                       <asp:Button ID="btn_update" runat="server" CssClass="btn btn-warning " style="margin-right:30px; margin-left:70px;  border-radius:5px; padding:10px; width:100px" text="Update" OnClick="btn_update_Click" />
                                   <asp:Button ID="btn_delete" runat="server" CssClass="btn btn-danger" style=" margin-left:65px;  border-radius:5px; padding:10px; width:100px "  text="Delete" OnClick="btn_delete_Click" />
                            
                        </div>
           </div>
              
                   <div class="col-md-6 mx-auto">
                            <div class="card p-3">
                        
                                 <div class="row">
                                    <div class="col text-center">
                                        <h3><label>Author List</label></h3>
                                    </div>
                                </div>
                                 
                                <div class="row">
                                    <div class="col text-center">
                                        <hr />
                                    </div>
                                </div>
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:E-libraryConnectionString %>" SelectCommand="SELECT * FROM [author_management_tbl] ORDER BY [author_id]"></asp:SqlDataSource>

                                 <div class="row">
                                    <div class="container-fluid text-center">
                                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#CCFF33" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical"  PageSize="3" Width="486px">
                                    <AlternatingRowStyle BackColor="White" />
                                    <Columns>
                                        <asp:BoundField DataField="author_id" HeaderText="author_id" SortExpression="author_id" />
                                        <asp:BoundField DataField="author_name" HeaderText="author_name" SortExpression="author_name" />
                                    </Columns>
                                    <FooterStyle BackColor="#CCCC99" />
                                    <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                                    <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                                    <RowStyle BackColor="#F7F7DE" />
                                    <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                                    <SortedAscendingCellStyle BackColor="#FBFBF2" />
                                    <SortedAscendingHeaderStyle BackColor="#848384" />
                                    <SortedDescendingCellStyle BackColor="#EAEAD3" />
                                    <SortedDescendingHeaderStyle BackColor="#575357" />
                                 </asp:GridView>
                                        </div>
                                </div>
                     </div>
                   </div>
        </div>

</div>
</asp:Content>
