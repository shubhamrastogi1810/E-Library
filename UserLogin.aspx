<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="UserLogin.aspx.cs" Inherits="E_Library.UserLogin" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 191px;
            height: 170px;
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
                                <img src="images/generaluser.png"   class="auto-style1"/>
                            </div>

                        </div>
                        
                        <div class="row">
                            <div class="col text-center">
                                <h2>Member Login</h2>
                            </div>

                        </div>
                        
                        <div class="row">
                            <div class="col text-center">
                               <hr />
                            </div>
                        </div>

                       <div class="row">
                            <div class="col">
                                <label>Member ID:</label>
                                    <div class="form-group">
                                        <asp:TextBox ID="txtMemberID" runat="server" CssClass="form-control">

                                        </asp:TextBox>
                               <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" CssClass="active carousel-item-left" ErrorMessage="*Member Id Required" ForeColor="Red" ControlToValidate="txtMemberID"></asp:RequiredFieldValidator>
                               
                                     </div>
                            </div>
                        </div>

                         <div class="row">
                            <div class="col">
                                <label>Password:</label>
                                    <div class="form-group">
                                        <asp:TextBox ID="TextBox1" TextMode="Password" runat="server" CssClass="form-control">

                                        </asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" CssClass="active carousel-item-left" ErrorMessage="*Password is Required" ForeColor="Red" Display="Dynamic" ControlToValidate="TextBox1"></asp:RequiredFieldValidator>
                                        <asp:CompareValidator ID="CompareValidator1" runat="server" CssClass="active carousel-item-left" Enabled="false" ErrorMessage="*Username or Passwoed Does not Match" ForeColor="Red" Display="Dynamic" ControlToValidate="TextBox1"></asp:CompareValidator>
                                        
                                     </div>
                            </div>
                        </div>


                         <div class="row">
                            <div class="col">
                                
                               <asp:Button ID="btnSubmit" runat="server" Text="Login" CssClass="btn btn-primary btn-block" OnClick="btnSubmit_Click" />
                                
                            </div>
                        </div>
                    
                        
                             <div class="row mt-1">
                                    <div class="col">
                                        <asp:Button ID="btnSignup" runat="server" Text="Sign Up" CssClass="btn btn-info btn-block" />
                                    </div>
                            </div>
                    
                    
                    </div>

                   <a href="WebForm1.aspx"><< Back to home</a>
                </div>
            </div>
        </div>


</asp:Content>
