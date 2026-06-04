<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="DashBoard.aspx.cs" Inherits="OnlineCakeShop.Admin.DashBoard" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <div class="main-panel">
    <nav class="navbar navbar-expand-lg navbar-transparent  navbar-absolute bg-primary fixed-top">
        <div class="container-fluid">
            <div class="navbar-wrapper">
                <div class="navbar-toggle">
                    <button type="button" class="navbar-toggler">
                        <span class="navbar-toggler-bar bar1"></span>
                        <span class="navbar-toggler-bar bar2"></span>
                        <span class="navbar-toggler-bar bar3"></span>
                    </button>
                </div>
                <li class="navbar-brand"> <a href="#!"> Dashboard   </a>

                </li>
            </div>
            
            
            <div class="collapse navbar-collapse justify-content-end" id="navigation"> 
               <ul class="navbar-nav">  
                  <li class="nav-item">
    <a class="nav-link" href="#pablo">
        <i class="now-ui-icons users_single-02" ></i>
        <p>
            <span class="d-lg-none d-md-block">Stats</span>
        </p>
        Welcome Admin!
    </a>
</li>
                </ul>
            </div>
        </div>
    </nav>
    <!-- End Navbar -->
    
     <div class="panel-header ">
        
    </div>

           <div class="content">
       <div class="row">
           
           <div class="col-md-3 col-xl-3">
               <div class="card widget-card-1">
                   <div class=" card-header card-block-small ">
                       <i class="nucleo-outline shopping_tag-content card1-icon"> </i> 
                       <h6 class="ml-4 text-blue"> Categories</h6>
                      <h4 class="ml-5"><%Response.Write(Session["category"]); %></h4>
                       <a href="Category.aspx" class="ml-2"><i class="fa fa-eye ml-3"></i>   View Details</a>    
                   </div>
               </div>
           </div> 
           
           <div class="col-md-3 col-xl-3">
    <div class="card widget-card-1">
        <div class=" card-header card-block-small ">
            <i class="icofont icofont-fas-food card1-icon"></i>
            <h6 class="ml-4 text-pink">Products</h6>
           <h4 class="ml-5"><%Response.Write(Session["product"]); %></h4>
            <a href="Product.aspx" class="ml-2"><i class="fa fa-eye ml-3"></i>   View Details</a>    
        </div>
    </div>
</div> 

           <div class="col-md-3 col-xl-3">
    <div class="card widget-card-1">
        <div class=" card-header card-block-small ">
            <i class="icofont icofont-m"></i>
            <h6 class="ml-4">Total Orders</h6>
           <h4 class="ml-5"><%Response.Write(Session["order"]); %></h4>
            <a href="OrderStatus.aspx" class="ml-2"><i class="fa fa-eye ml-3"></i>   View Details</a>    
        </div>
    </div>
</div> 

           <div class="col-md-3 col-xl-3">
    <div class="card widget-card-1">
        <div class=" card-header card-block-small ">
            <i class="icofont icofont-m"></i>
            <h6 class="ml-4">Delivered Items</h6>
           <h4 class="ml-5"><%Response.Write(Session["delivered"]); %></h4>
            <a href="OrderStatus.aspx" class="ml-2"><i class="fa fa-eye ml-3"></i>   View Details</a>    
        </div>
    </div>
</div> 


               
       </div>
               &nbsp;
               &nbsp;
               &nbsp;
               &nbsp;
               &nbsp;
               &nbsp;
               &nbsp;
               &nbsp; &nbsp;
 

                      <div class="row mt-5">
           
           <div class="col-md-3 col-xl-3">
               <div class="card widget-card-1">
                   <div class=" card-header card-block-small ">
                       <i class="icofont icofont-muffin card1-icon"></i>
                       <h6 class="ml-4 text-blue">Pending Items</h6>
                      <h4 class="ml-5"><%Response.Write(Session["pending"]); %></h4>
                       <a href="OrderStatus.aspx" class="ml-2"><i class="fa fa-eye ml-3"></i>   View Details</a>    
                   </div>
               </div>
           </div> 
           
           <div class="col-md-3 col-xl-3">
    <div class="card widget-card-1">
        <div class=" card-header card-block-small ">
            <i class="icofont icofont-fas-food card1-icon"></i>
            <h6 class="ml-4 text-pink">Users</h6>
           <h4 class="ml-5"><%Response.Write(Session["user"]); %></h4>
            <a href="Users.aspx" class="ml-2"><i class="fa fa-eye ml-3"></i>   View Details</a>    
        </div>
    </div>
</div> 

           <div class="col-md-3 col-xl-3">
    <div class="card widget-card-1">
        <div class=" card-header card-block-small ">
            <i class="icofont icofont-m"></i>
            <h6 class="ml-4">Sold Amount</h6>
           <h4 class="ml-5"><%Response.Write(Session["soldAmount"]); %></h4>
            <a href="Report.aspx" class="ml-2"><i class="fa fa-eye ml-3"></i>   View Details</a>    
        </div>
    </div>
</div> 

           <div class="col-md-3 col-xl-3">
    <div class="card widget-card-1">
        <div class=" card-header card-block-small ">
            <i class="icofont icofont-m"></i>
            <h6 class="ml-4">Feedbacks</h6>
           <h4 class="ml-5"><%Response.Write(Session["contact"]); %></h4>
            <a href="Contacts.aspx" class="ml-2"><i class="fa fa-eye ml-3"></i>   View Details</a>    
        </div>
    </div>
</div> 



        </div>

    
    </div>

</asp:Content>
