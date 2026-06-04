<%@ Page Title="" Language="C#" MasterPageFile="~/User/User.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="OnlineCakeShop.User.Contact" %>
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


     <!-- Breadcrumb Begin -->
    <div class="breadcrumb-option">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 col-md-6 col-sm-6">
                    <div class="breadcrumb__text">
                        <h2>Cantact Us</h2>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6 col-sm-6">
                    <div class="breadcrumb__links">
                        <a href="Default.aspx">Home</a>
                        <span>Contact Us</span>
                    </div>
                    
                      <div class="align-self-end mt-5">
                            <asp:Label ID="lblMsg" runat="server" Visible="false"></asp:Label>
                     </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Breadcrumb End -->
 <!-- Contact Section Begin -->
    <section class="contact spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-4">
                    <div class="contact__text">
                        <h3>Contact With us</h3>
                        <ul>
                            <li>Representatives or Advisors are available:</li>
                            <li>Mon-Fri: 5:00am to 9:00pm</li>
                            <li>Sat-Sun: 6:00am to 9:00pm</li>
                        </ul>
                        <img src="../Files/img/cake-piece.png" alt="">
                    </div>
                </div> <div class="col-lg-8">
                    <div class="contact__form">
                        
                            <div class="row">
                                <div class="col-lg-6">
                                    <asp:TextBox ID="txtName" runat="server" CssClass="form-control" placeholder="Your Name"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="rfvName" runat="server" ErrorMessage="Name is required"
                                        ControlToValidate="txtName" ForeColor="Red" Display="Dynamic" SetFocusOnError="true"></asp:RequiredFieldValidator>
                                </div>
                                <div class="col-lg-6">
                                     <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" placeholder="Your Email" TextMode="Email"></asp:TextBox>
                                     <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ErrorMessage="Email is required"
                                          ControlToValidate="txtEmail" ForeColor="Red" Display="Dynamic" SetFocusOnError="true"></asp:RequiredFieldValidator>
                                </div>
                                &nbsp;
                                &nbsp;
                                &nbsp;
                                &nbsp;
                                &nbsp;
                                <div class="col-lg-12"  >
                                     <asp:TextBox ID="txtMessage" runat="server" CssClass="form-control" placeholder="Enter Your Query/Feedback" TextMode="MultiLine"></asp:TextBox>
                                     <asp:RequiredFieldValidator ID="rfvMessage" runat="server" ErrorMessage="Message is required"
                                            ControlToValidate="txtMessage" ForeColor="Red" Display="Dynamic" SetFocusOnError="true"></asp:RequiredFieldValidator>
                                 </div>
                                <div class="col-lg-6 mt-3 ">
                                    <asp:Button ID="btnSubmit" runat="server" Text="Submit" CssClass="btn btn-dark rounded-pill pl-4 pr-4 text-white"
                                        OnClick="btnSubmit_Click"/>
                                </div>
                            </div>
                    
                    </div>
                </div>
               
            </div>
        </div>
    </section>
    <!-- Contact Section End -->




</asp:Content>
