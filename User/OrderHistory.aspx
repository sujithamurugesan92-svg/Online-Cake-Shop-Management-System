<%@ Page Title="" Language="C#" MasterPageFile="~/User/User.Master" AutoEventWireup="true" CodeBehind="OrderHistory.aspx.cs" Inherits="OnlineCakeShop.User.Order_History" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


       <div class="breadcrumb-option">
    <div class="container">
        <div class="row">
            <div class="col-lg-6 col-md-6 col-sm-6">
                <div class="breadcrumb__text">
                    <h2>Order History</h2>
                </div>
            </div>
            <div class="col-lg-6 col-md-6 col-sm-6">
                <div class="breadcrumb__links">
                    <a href="Default.aspx">Home</a>
                    <span>Order History</span>
                </div>
            </div>
        </div>
    </div>
</div>


    <section class="contact spad">
<div class="container">
    <div class="row">
    <div class="col-12">
        <div class="card">
            <div class="card-body">
                <div class="card-title mb-4">


    <asp:Repeater ID="rOrderHistory" runat="server" OnItemDataBound="rOrderHistory_ItemDataBound" >
    <ItemTemplate>
        <div class="container">
            <div class="row pt-1 pb-1" style="background-color:lightgray">
                <div class="col-4">
                    <span class="badge badge-pill badge-dark text-white">
                       <%# Eval("SrNo") %>
                    </span>
                    Payment Mode: <%# Eval("PaymentMode").ToString() == "cod" ? "Cash On Delivery" : Eval("PaymentMode").ToString().ToUpper() %>
                </div>
                <div class="col-6">
                   <%# string.IsNullOrEmpty( Eval("CardNo").ToString()) ? "" : "Card No: " + Eval("CardNo") %> 
                </div>
                <div class="col-2" style="text-align:end">
                    <a href="Invoice.aspx?id=<%# Eval("PaymentId") %>" class="btn btn-info btn-sm">
                        <i class="fa fa-download mr-2"></i>Invoice</a>
                </div>
            </div>
            <asp:HiddenField ID="hdnPaymentId" runat="server" Value='<%# Eval("PaymentId") %>'/>


            <asp:Repeater ID="rOrders" runat="server">
                <HeaderTemplate>
                    <table class="table data-table-export table-responsive-sm table-bordered table-hover">
                        <thead class="bg-dark text-white">
                            <tr>
                                <th>Product Name</th>
                                <th>Unit Price</th>
                                <th>Qty</th>
                                <th>Total Price</th>
                                <th>OrderId</th>
                                <th>Status</th>
                            </tr>
                         </thead>
                       <tbody>
                </HeaderTemplate>
                <ItemTemplate>
                    <tr>
                        <td>
                            <asp:Label ID="lblName" runat="server" Text='<%# Eval("Name") %>'></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="lblPrice" runat="server" Text='<%# string.IsNullOrEmpty( Eval("Price").ToString()) ? "" : "₹" + Eval("Price") %>'></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="lblQty" runat="server" Text='<%# Eval("Quantity") %>'></asp:Label>
                        </td>
                        <td>
                            ₹<asp:Label ID="lblTotalPrice" runat="server" Text='<%# Eval("TotalPrice") %>'></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="lblOrderNo" runat="server" Text='<%# Eval("OrderNo") %>'></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="lblStatus" runat="server" Text='<%# Eval("Status") %>'
                                CssClass='<%# Eval("Status").ToString() == "Delivered" ? "badge badge-success" : "badge badge-warning" %>'></asp:Label>
                       </td>
                    </tr>
                </ItemTemplate>
                <FooterTemplate>
                        
                         </tbody>
                        </table>
                </FooterTemplate>
            </asp:Repeater>


        </div>
    </ItemTemplate>
</asp:Repeater>
    </div>
                </div>
            </div>
        </div>
        </div>
    </div>
        </section>

</asp:Content>
