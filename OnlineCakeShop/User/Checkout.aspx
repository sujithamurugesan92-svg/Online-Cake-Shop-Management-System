
<%@ Page Title="" Language="C#" MasterPageFile="~/User/User.Master" AutoEventWireup="true" CodeBehind="Checkout.aspx.cs" Inherits="OnlineCakeShop.User.Payment" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    
         <script>
             window.onload = function () {
                 var seconds = 5;
                 setTimeout(function () {
                     document.getElementById("<%=lblMsg.ClientID %>").style.display = "none";
        }, seconds * 1000);
             };

             $(function () {
                 $('[data-toggle="tooltip"').tooltip()
             })


         </script>
    <script type="text/javascript">
        function DisableBackButton() {
            window.history.forward()
        }
        DisableBackButton();
        window.onload = DisableBackButton;
        window.onpageshow = function (evt) { if (evt.persisted) DisableBackButton() }
        window.onunload = function () { void (0) }
    </script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <div class="breadcrumb-option">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 col-md-6 col-sm-6">
                    <div class="breadcrumb__text">
                        <h2>Checkout</h2>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6 col-sm-6">
                    <div class="breadcrumb__links">
                        <a href="Default.aspx">Home</a>
                        <span>Checkout</span>
                    </div>
                         <div class="align-self-end mt-5">
                              <asp:Label ID="lblMsg" runat="server" Visible="false"></asp:Label>
                      </div>
                </div>
            </div>
        </div>
    </div>

    

<div class="container ">
<div class="row pb-5">
    <div class="col-lg-6  ml=100px">
        <div class="card">
            <div class="card-header">
                <div class="bg-white shadow-sm pt-4  pb-2">
                    <ul role="tablist" class="nav bg-light nav-pills rounded nav-fill mb-3">
                        <li class="nav-item"><a data-toggle="pill" href="#credit-card" aria-controls="credit-card" class="nav-link active"><i class="fa fa-credit-card-alt"> Credit Card</i></a> </li>
                         <%-- <li class="nav-item"> <a  data-toggle="pill" href="#Cash On Delivery" aria-controls="Cash On Delivery"  aria-selected="true" class="nav-link " ><i class="fa fa-money mr-2"> Cash On Delivery</i></a></li>--%>
                    </ul>
                </div>


                <div class="tab-content">
 
            <div id="credit-card" class="tab-pane fade show active pt-3">  
                <div role="form">
                    <div class="form-group">
                        <label for="txtName">
                            <h6>Card Owner</h6>
                        </label>
                        <asp:RequiredFieldValidator ID="rfvName" runat="server" ErrorMessage="Name is required"
                            ControlToValidate="txtName" ForeColor="Red" Display="Dynamic" SetFocusOnError="true"
                            ValidationGroup="card"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Name must be in characters"
                            ControlToValidate="txtName" ForeColor="Red" Display="Dynamic" SetFocusOnError="true"
                           ValidationExpression="^[a-zA-Z\s]+$" ValidationGroup="card"></asp:RegularExpressionValidator>
                        <div class="input-group">
                        <asp:TextBox ID="txtName" CssClass="form-contol" placeholder="Card Owner Name" runat="server"></asp:TextBox>
                            </div>
                    </div>
                     <div class="form-group">
     <label for="txtCardNo">
         <h6>Card Number</h6>
     </label>  
     <asp:RequiredFieldValidator ID="rfvCardNo" runat="server" ErrorMessage="Card number is required"
         ControlToValidate="txtCardNo" ForeColor="Red" Display="Dynamic" SetFocusOnError="true"
         ValidationGroup="card"></asp:RequiredFieldValidator>
     <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Card number must be of 16 digits"
         ControlToValidate="txtCardNo" ForeColor="Red" Display="Dynamic" SetFocusOnError="true"
        ValidationExpression="[0-9]{16}" ValidationGroup="card"></asp:RegularExpressionValidator>
                         <div class="input-group">
                             <asp:TextBox ID="txtCardNo" CssClass="form-contol" placeholder="Valid Card Number" runat="server"
                                 TextMode="Number"></asp:TextBox>
                             <div class="input-group-append">
                                 <span class="input-group-text text-muted">
                                     <i class="fa fa-cc-visa mx-1"></i>
                                     <i class="fa fa-cc-mastercard mx-1"></i>
                                     <i class="fa fa-cc-amex mx-1"></i>
                                 </span>
                             </div>
                         </div>
                  </div>
                    <div class="row">
                        <div class="col-sm">
                            <div class="form-group">
                                <label>
                                    <span class="hidden-xs">
                                        <h6>Expiration Date</h6>
                                    </span>
                                </label>
                                <asp:RequiredFieldValidator ID="rfvExpMonth" runat="server" ErrorMessage="Expiry Month is required"
                                     ControlToValidate="txtExpMonth" ForeColor="Red" Display="Dynamic" SetFocusOnError="true"
                                     ValidationGroup="card"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ErrorMessage="Expiry Month must be of 2 digits"
                                     ControlToValidate="txtExpMonth" ForeColor="Red" Display="Dynamic" SetFocusOnError="true"
                                     ValidationExpression="[0-9]{2}" ValidationGroup="card"></asp:RegularExpressionValidator>
                                <asp:RequiredFieldValidator ID="rfvExpYear" runat="server" ErrorMessage="Expiry Year is required"
                                     ControlToValidate="txtExpYear" ForeColor="Red" Display="Dynamic" SetFocusOnError="true"
                                     ValidationGroup="card"></asp:RequiredFieldValidator>
                                 <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" 
                                     ErrorMessage="Expiry Year must be of 4 digits"
                                     ControlToValidate="txtExpYear" ForeColor="Red" Display="Dynamic" SetFocusOnError="true"
                                     ValidationExpression="[0-9]{4}" ValidationGroup="card"></asp:RegularExpressionValidator>
                                <div class="input-group">
                                    <asp:TextBox ID="txtExpMonth" CssClass="form-contol" placeholder="MM" runat="server"
                                     TextMode="Number"></asp:TextBox>
                                    <asp:TextBox ID="txtExpYear" CssClass="form-contol" placeholder="YYYY" runat="server"
                                    TextMode="Number"></asp:TextBox>
                            </div>
                        </div>
                   </div>
                        </div>
                   
                       <div class="form-group mb-4">
                           <label data-toggle="tooltip" title="Three digit CV code on the back of your card">
                               <h6>CVV<i class="fa fa-question-circle d-inline"></i></h6>
                           </label>
                           <asp:RequiredFieldValidator ID="rfvCvv" runat="server" ErrorMessage="CVV No. is required"
                               ControlToValidate="txtCvv" ForeColor="Red" Display="Dynamic" SetFocusOnError="true"
                               ValidationGroup="card"></asp:RequiredFieldValidator>
                           <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ErrorMessage="CVV No. must be of 3 digits"
                              Display="Dynamic" ForeColor="Red" SetFocusOnError="true" 
                               ValidationExpression="[0-9]{3}" ControlToValidate="txtCvv" ValidationGroup="card">
                           </asp:RegularExpressionValidator>
                           <div class="input-group">
                            <asp:TextBox ID="txtCvv" runat="server" CssClass="form-group" placeholder="CVV No."
      TextMode="Number"></asp:TextBox>
                          </div> 
                       </div>
                   
                
   <div class="form-group">
       <label for="txtAddress">
           <h6>Delivery Address</h6>
       </label>
        <asp:TextBox ID="txtAddress" runat="server" CssClass="form-control" placeholder="Delivery Address" TextMode="MultiLine" ValidationGroup="card"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvAddress" runat="server" ErrorMessage="Delivery Address is required" ControlToValidate="txtAddress"
                ForeColor="Red" Display="Dynamic" SetFocusOnError="true" ValidationGroup="card"></asp:RequiredFieldValidator>
        
    </div>
   <div class="card-footer">
      <asp:LinkButton ID="lbCardSubmit" runat="server" CssClass="btn btn-dark  text-white"
ValidationGroup="card" OnClick="lbCardSubmit_Click">Confirm Payment</asp:LinkButton>
   </div>
                </div>
               
</div>

                
                 
     
</div> 
        <div class="card-footer">
            <b class="badge badge-dark text-white"> Order Total: ₹ <% Response.Write(Session["grandTotalPrice"]);%> </b>
        </div>
            </div>
        </div>
    </div>
    <div class="col-lg-6  ml=100px">
    <div class="card">
        <div class="card-header">
            <div class="bg-white shadow-sm pt-4  pb-2">
                <ul role="tablist" class="nav bg-light nav-pills rounded nav-fill mb-3">
                     <li class="nav-item"> <a  data-toggle="pill" href="#Cash On Delivery" aria-controls="Cash On Delivery"  aria-selected="true" class="nav-link active " ><i class="fa fa-money mr-2"> Cash On Delivery</i></a></li>
                </ul>
            </div>
            <div class="tab-content">
                            <div id="Cash On Delivery" class="tab-pane fade  show active pt-3">  
   <div class="form-group">
       <label for="txtCODAddress">
           <h6>Delivery Address</h6>
       </label>
        <asp:TextBox ID="txtCODAddress" runat="server" CssClass="form-control" placeholder="Delivery Address" TextMode="MultiLine"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvCODAddress" runat="server" ErrorMessage="Address is required" ControlToValidate="txtCODAddress"
                ForeColor="Red" Display="Dynamic" SetFocusOnError="true" ValidationGroup="cod" Font-Names="Segoe Script"></asp:RequiredFieldValidator>
        
    </div>
   <p>
      <asp:LinkButton ID="lbCodSubmit" runat="server" CssClass="btn btn-dark  text-white"
ValidationGroup="cod" OnClick="lbCodSubmit_Click"><i class="fa fa-cart-arrow-down mr-2"></i>Confirm Order</asp:LinkButton>
   </p>
   <p class="text-muted">
       
       Noted: At the receiving your order, you need to do full payment.
       After completing the payment process, you can check your updated order status.
   </p>
     </div>
                </div>
            </div>
            <div class="card-footer">
    <b class="badge badge-dark text-white"> Order Total: ₹ <% Response.Write(Session["grandTotalPrice"]);%> </b>
</div>
        </div>
        </div>
    
    </div>
    </div>

</asp:Content>
