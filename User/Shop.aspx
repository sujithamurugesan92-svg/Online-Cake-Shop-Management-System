<%@ Page Title="" Language="C#" MasterPageFile="~/User/User.Master" AutoEventWireup="true" CodeBehind="Shop.aspx.cs" Inherits="OnlineCakeShop.User.Shop" %>
<%@ Import Namespace="OnlineCakeShop" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

 <!-- Breadcrumb Begin -->
    <div class="breadcrumb-option">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 col-md-6 col-sm-6">
                    <div class="breadcrumb__text">
                        <h2>Shop</h2>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6 col-sm-6">
                    <div class="breadcrumb__links">
                        <a href="Default.aspx">Home</a>   
                        <span>Shop</span>
                    </div>
                                                        <div class="align-self-end mt-5">
    <asp:Label ID="lblMsg" runat="server" Visible="false"></asp:Label>
</div>
                </div>
            </div>
        </div>
    </div>
    <!-- Breadcrumb End -->

    <!-- Shop Section Begin -->

    

    <section class="shop spad">
        <div class="container">
            <div class="shop__option">
                <div class="row">
                    <div class="col-lg-7 col-md-7">
                        <div class="shop__option__search">
                            <form action="#">
                               <select>
                                    <asp:Repeater ID="rCategory" runat="server" >
                                        <ItemTemplate>
                                            <option value=".<%# Regex.Replace(Eval("Name").ToString().ToLower(),@"\s+","") %>"><%# Eval("Name") %></option>
                                        </ItemTemplate>
                                    </asp:Repeater>
                                    
                                </select>
                                
                                
                            </form>
                        </div>
                    </div>
                    
                </div>
            </div>


          
             <div class="row-grid"> 
                 <div class="col-lg-3 col-md-6 col-sm-6">
                    <div class="product__item ">
                        <asp:Repeater ID="rProducts" runat="server" OnItemCommand="rProducts_ItemCommand">
                            <ItemTemplate>
                                <div class="product__item__pic set-bg" >
                                     <img alt="" src="<%# Utils.GetImageUrl( Eval("ImageUrl")) %> "/>
                            <div class="product__label">
                                <span><%# Eval("CategoryName") %></span>
                                
                            </div>
                        </div>
                        <div class="product__item__text">
                            <h6><a href="#"><%# Eval("Name") %></a></h6>
                                   <p>
                                    <%# Eval("Description") %>
                                     </p>
                            <div class="product__item__price">₹<%# Eval("Price") %></div>
                            <div class="cart_add">
                                              <asp:LinkButton ID="lbAddToCart" runat="server" CommandName="addToCart"
CommandArgument='<%# Eval("ProductId") %>' > Add to cart</asp:LinkButton>
                            </div>
                            </div>
                                
                               <%-- <div class="col-sm-6 col-lg-4">
                                    
                                     
                                <div class="product__item pic ml-5" >
                                           
                            <img alt="" src="<%# Utils.GetImageUrl( Eval("ImageUrl")) %> "/>
                                               
                           <div class="product__label">
                                            
                                <span><%# Eval("CategoryName") %></span>
                           
                       
                                    <div class="product__item__text ">
                                          
                                        <h6><a href="#"><%# Eval("Name") %></a></h6>
                                                 <p>
                                                    <%# Eval("Description") %>
                                                   </p>
                                            
                                <div class="product__item__price">₹<%# Eval("Price") %></div>
                               
       
                                     <div class="cart_add">
                                        <asp:LinkButton ID="lbAddToCart" runat="server" CommandName="addToCart"
                          CommandArgument='<%# Eval("ProductId") %>' > Add to cart</asp:LinkButton>
                                       </div>
                               </div>      
                                   </div>
                                     </div>
                 </div>
                                </div>--%>
                                   
                                </ItemTemplate>
                            </asp:Repeater>
                    </div>
               </div>
                 </div>
             
                 
           
          
        </section>
                
 
  
    <!-- Shop Section End -->
   
    

</asp:Content>


