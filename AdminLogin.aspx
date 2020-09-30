<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AdminLogin.aspx.cs" Inherits="E_Library.AdminLogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 193px;
            height: 171px;
        }
    </style>
</asp:Content>






<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
          <div class="container mt-5">
            <div class="row">
                <div class="col-md-6 mx-auto">
                    <div class="card p-3">
                        
                        <div class="row">
                            <div class="col text-center">
                                <img src="Images/adminuser.png" class="auto-style1"/>
                            </div>

                        </div>
                        
                        <div class="row">
                            <div class="col text-center">
                                <h2>Admin Login</h2>
                            </div>

                        </div>
                        
                        <div class="row">
                            <div class="col text-center">
                               <hr />
                            </div>
                        </div>

                       <div class="row">
                            <div class="col">
                                <label>Admin ID:</label>
                                    <div class="form-group">
                                        <asp:TextBox ID="txtAdminID" runat="server" CssClass="form-control">

                                        </asp:TextBox>
                               
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*Admin UserName is Required" ForeColor="Red" ControlToValidate="txtAdminID"></asp:RequiredFieldValidator>
                               
                                     </div>
                            </div>
                        </div>

                         <div class="row">
                            <div class="col">
                                <label>Password:</label>
                                    <div class="form-group">
                                        <asp:TextBox ID="TextBox1" TextMode="Password" runat="server" CssClass="form-control" >

                                        </asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" Display="Dynamic" ErrorMessage="*Password is Required." ForeColor="Red" ControlToValidate="TextBox1"></asp:RequiredFieldValidator>
                                        <asp:CompareValidator ID="CompareValidator1" runat="server" Display="Dynamic" Enabled="false" ErrorMessage="*Password or Username Does Not Match" ForeColor="Red" ControlToValidate="TextBox1"></asp:CompareValidator>
                               
                                     </div>
                            </div>
                        </div>


                         <div class="row">
                                <div class="col">
                            <div class="auto-style2">
                                
                               <asp:Button ID="btnSubmit" runat="server" Text="Login" CssClass="btn btn-success btn-block" OnClick="btnSubmit_Click" />
                                    </div>
                            </div>
                        </div>
                    
                    </div>

                    <a href="WebForm1.aspx"> << back to home</a>
                </div>
            </div>
        </div>


</asp:Content>
