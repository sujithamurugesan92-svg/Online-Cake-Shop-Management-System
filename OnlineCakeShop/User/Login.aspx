<%@ Page Title="" Language="C#" MasterPageFile="~/User/User.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="OnlineCakeShop.User.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

     <script>
 window.onload = function () {
     var seconds = 5;
     setTimeout(function () {
         document.getElementById("<%=lblMsg.ClientID %>").style.display = "none;
     }, seconds * 1000);
 };
     </script>


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="breadcrumb-option">
    <div class="container">
        <div class="row">
            <div class="col-lg-6 col-md-6 col-sm-6">
                <div class="breadcrumb__text">

                    <asp:Label ID="lblHeaderMsg" runat="server"
                      Text="<h2> Login</h2>">  </asp:Label>
                </div>
            </div>
           
            <div class="col-lg-6 col-md-6 col-sm-6">
                <div class="breadcrumb__links">
                    <a href="Default.aspx">Home</a>
                    <span>Login</span>
                </div>
                                                    <div class="align-self-end mt-5">
    <asp:Label ID="lblMsg" runat="server" Visible="false"></asp:Label>
</div>
            </div>
        </div>
    </div>
</div>


           <section class="contact spad">
<div class="container">
    <div class="row">
    <div class="col-md-6">
        <div class="form_container">

               <img  id="userLogin" alt="" src="../Images/login_Image.jfif"  class="img-thumbnail"/>
          
            </div>
        </div>

       <div class="col-md-6">
    <div class="form_container">

        <div>
            <asp:TextBox ID="txtUsername" runat="server" CssClass="form-control" placeholder="Enter Username"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvUsername" runat="server" ErrorMessage="Username is required"
                ControlToValidate="txtUsername" ForeColor="Red" Display="Dynamic" SetFocusOnError="true"></asp:RequiredFieldValidator>
        </div>

        &nbsp;
        &nbsp;
        &nbsp;
         <div>
     <asp:TextBox ID="txtPassword" runat="server" CssClass="form-control" placeholder="Enter Password" TextMode="Password"></asp:TextBox>
     <asp:RequiredFieldValidator ID="rfvPassword" runat="server" ErrorMessage="Password is required"
         ControlToValidate="txtPassword" ForeColor="Red" Display="Dynamic" SetFocusOnError="true" ></asp:RequiredFieldValidator>
 </div>
        &nbsp;
&nbsp;
&nbsp;
        <div class="btn-box">
            <asp:Button ID="btnLogin" runat="server" Text="Sign In" CssClass="btn btn-dark rounded-pill pl-4 pr-4 text-white" 
                Onclick="btnLogin_Click"/>
            <span class="pl-3 text-info"> New User? <a href="Registration.aspx" class="badge badge-info">   Register Here.... </a> </span>
        </div>
      
        </div>
    </div>
        </div>
    </div>
               </section>


</asp:Content>
