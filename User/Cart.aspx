<%@ Page Title="" Language="C#" MasterPageFile="~/User/User.Master" AutoEventWireup="true" CodeBehind="Cart.aspx.cs" Inherits="OnlineCakeShop.User.Cart" %>
<%@ Import Namespace="OnlineCakeShop" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<div class="breadcrumb-option">
    <div class="container">
        <div class="row">
            <div class="col-lg-6 col-md-6 col-sm-6">
                <div class="breadcrumb__text">
                    <h2>Shopping Cart</h2>
                </div>
            </div>
            <div class="col-lg-6 col-md-6 col-sm-6">
                <div class="breadcrumb__links">
                    <a href="Default.aspx">Home</a>   
                    <span>Shopping Cart</span>   
                </div>
                                    <div class="align-self-end mt-5">
    <asp:Label ID="lblMsg" runat="server" Visible="false"></asp:Label>
</div>
            </div>
        </div>
    </div>
</div>





    <section class="shop spad">
<div class="container">
    <div class="row">
    <asp:Repeater ID="rCartItem" runat="server" OnItemCommand="rCartItem_ItemCommand" OnItemDataBound="rCartItem_ItemDataBound">
        <HeaderTemplate>
            <table class="table">
                <thead>
                    <tr>
                        <th>PRODUCT</th>
                        <th>QUANTITY</th>
                        <th>CART TOTAL</th>
                        
                    </tr>
                </thead>
                <tbody>      
        </HeaderTemplate>
        <ItemTemplate>
            <tr>
                <td>
                    <img alt="" src="<%# Utils.GetImageUrl(Eval ("ImageUrl")) %> " width=60px; /> 
                        
              <asp:Label ID="lblName" runat="server" Text='<%# Eval("Name") %>'></asp:Label>          
                        <div class="UserData ml-3 pl-5 pr-5 pb-4">
                    ₹<asp:Label ID="lblPrice" runat="server" Text='<%# Eval("Price") %>'></asp:Label>
                    <asp:HiddenField ID="hdnProductId" runat="server" Value='<%# Eval("ProductId") %>'/>
                    <asp:HiddenField ID="hdnQuantity" runat="server"  Value='<%# Eval("Qty") %>' />
                    <asp:HiddenField ID="hdnPrdQuantity" runat="server"  Value='<%# Eval("PrdQty") %>'/>
                            </div>
                       
                </td>
                <td>
                    <div class="product__details__option">
                        <div class="quantity">
                            <div class="pro-qty ">
                                <asp:TextBox ID="txtQuantity" runat="server" TextMode="Number" Text='<%# Eval("Quantity") %>'></asp:TextBox>
                                <asp:RegularExpressionValidator ID="revQuantity" runat="server" ErrorMessage="*" ForeColor="Red" Font-Size="Small" ValidationExpression="[1-9]*" 
                                    ControlToValidate="txtQuantity" Display="Dynamic" SetFocusOnError="true" EnableClientScript="true"></asp:RegularExpressionValidator>
                            </div>
                        </div>
                    </div>
                </td>
               
                <td>
                    ₹<asp:Label ID="lblTotalPrice" runat="server" ></asp:Label>
                </td>
                <td>
                    <asp:LinkButton ID="lbDelete" runat="server"  Text="Remove" CommandName="remove" CommandArgument='<%# Eval("ProductId") %>'
                        OnClientClick="return confirm('Do you want to remove this item from cart?');"> 
                        <i class="fa fa-close"></i></asp:LinkButton></td>
            </tr>
         


        </ItemTemplate>
        <FooterTemplate>
                       <tr>
    <td colspan="1"></td>
    <td class="pb-lg-3 pl-lg-5">
        <b>Grand Total:-</b>
    </td>
    <td>₹<% Response.Write(Session["grandTotalPrice"]); %></td>
    <td> </td>
</tr>
            <tr>
                <td colspan="1" class="continue__btn">
                    <a href="Shop.aspx" class="btn btn-dark text-white" ><i class="fa fa-arrow-circle-left mr-2">CONTINUE SHOPPING</i></a>
          </td>
                <td >
                     <asp:LinkButton ID="lbUpdateCart" runat="server" CommandName="updateCart" CssClass="btn btn-dark  text-white">
        <i class="fa fa-refresh mr-2"></i>UPDATE CART
    </asp:LinkButton>
</td>
        
                <td>
                                    <asp:LinkButton ID="lbCheckout" runat="server" CommandName="Checkout" CssClass="btn btn-dark  text-white"> CHECKOUT    <i class="fa fa-arrow-circle-right mr-2"></i>

                                    </asp:LinkButton> 
                </td>
            </tr>
           
               </tbody>
            </table>
        </FooterTemplate>
    </asp:Repeater>
</div>
    </div>
        </section>



</asp:Content>
