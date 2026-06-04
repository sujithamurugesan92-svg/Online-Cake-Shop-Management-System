<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="OrderStatus.aspx.cs" Inherits="OnlineCakeShop.Admin.OrderStatus" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

     <script>
     window.onload = function () {
         var seconds = 5;
         setTimeout(function () {
             document.getElementById("<%=lblMsg.ClientID %>").style.display = "none";
         }, seconds * 1000);
     };
     </script>


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

           <div class="main-panel">

                    <div class="align-align-self-end">
                <asp:Label   ID="lblMsg" runat="server" Visible="false"></asp:Label>
</div>
           <!-- Navbar -->
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
                       <li class="navbar-brand"> <a href="#!"> Update Status </a>

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
            <div class="col-lg-8 col-md-8 col-sm-6">
                <div class="card card-chart">
                    <div class="card-header">
                       <h4 class="sub-title">Order List</h4>
                   
                        <div class="card-block table-border-style" >
    <div class="table-responsive">

       <asp:Repeater ID="rOrderStatus" runat="server" OnItemCommand="rOrderStatus_ItemCommand" >
            <HeaderTemplate>
                <table class="table data-table-export table-hover nowrap ">
                    <thead>
                    <tr>
                        <th class="table-plus">Order No.</th>
                        <th>Order Date</th>
                        <th>Status </th>
                        <th>Product Name</th>
                        <th>Total Price</th>
                        <th>Payment Mode</th>
                        <th class="datatable-nosort">Edit</th>
                    </tr>
                   </thead>
                <tbody>
            </HeaderTemplate>
            <ItemTemplate>
                <tr>
                    <td class="table-plus"> <%# Eval("OrderNo") %></td>
                    <td> <%# Eval("OrderDate") %> </td>
                    <td>
                        <asp:Label ID="lblStatus" runat="server" Text='<%# Eval("Status") %>'
                            CssClass='<%# Eval("Status").ToString() == "Delivered" ? "badge badge-success" : "badge badge-warning" %>'></asp:Label>
                    </td>    
                    <td> <%# Eval("Name") %></td>
                     <td> <%# Eval("TotalPrice") %></td>
                     <td> <%# Eval("PaymentMode") %></td>
                    <td>
                        <asp:LinkButton ID="lnkEdit" runat="server" Text="Edit" CssClass="badge badge-primary"
                            CommandArgument='<%# Eval("OrderDetailsId") %>' CommandName="edit"   >
                                <i class="fas fa-pencil-alt"></i>
                        </asp:LinkButton>
                    </td>

                </tr>

            </ItemTemplate>
            <FooterTemplate>
                </tbody>
                </table>
            </FooterTemplate>
        </asp:Repeater>

    </div>
</div>
                </div>
            </div>
                </div>
            <div class="col-lg-4">
                <div class="card card-chart">
                    <div class="card-header">
                        <asp:Panel ID="pUpdateOrderStatus" runat="server">
                               <h4 class="sub-title">Update Status</h4>
                           
<div class="card-body">
    <div class="form-group">
          <label>Order Status</label>
    <div>
        <asp:DropDownList ID="ddlOrderStatus" runat="server" CssClass="form-control" >
            <asp:ListItem Value="0">Select Status</asp:ListItem>
            <asp:ListItem>Pending</asp:ListItem>
            <asp:ListItem>Dispatched</asp:ListItem>
            <asp:ListItem>Delivered</asp:ListItem>
        </asp:DropDownList>
        <asp:RequiredFieldValidator ID="rfvDdlOrderStatus" runat="server" ErrorMessage="Order status is required"
            ForeColor="Red" ControlToValidate="ddlOrderStatus" SetFocusOnError="true" Display="Dynamic" InitialValue="0"></asp:RequiredFieldValidator>
     <asp:HiddenField ID="hdnId" runat="server" Value="0" />
        </div>
</div>
    <div class="pb-5" >
        <asp:Button ID="btnUpdate" runat="server" Text="Update" CssClass="btn btn-primary rounded-pill" 
            OnClick="btnUpdate_Click" />
        &nbsp; &nbsp;
        &nbsp;
        &nbsp;
        &nbsp;
        &nbsp;
        &nbsp;
        <asp:Button ID="btnCancel" runat="server" Text="Cancel" CssClass="btn btn-primary rounded-pill" 
            OnClick="btnCancel_Click"/>
    
    </div>
</div>
                        </asp:Panel>
                        </div>
                    </div>
                </div>
            </div> 
            </div>
        </div>
        
</asp:Content>
