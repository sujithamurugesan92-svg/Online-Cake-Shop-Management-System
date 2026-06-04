<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Report.aspx.cs" Inherits="OnlineCakeShop.Admin.Report" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

                   <div class="main-panel">
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
                       <li class="navbar-brand"> <a href="#!"> Sellling Reports </a>

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
            
            <div class="col-lg-12 col-md-8 col-sm-6">
                <div class="card card-chart">
                    <div class="card-header">
                        <div class="container">
                            
                            <div class="form-group col-md-4">
                                <label>From Date</label>
                                <asp:TextBox ID="txtFromDate" runat="server" TextMode="Date" CssClass="form-control"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfvFromDate" runat="server" ErrorMessage="*"
                                    ForeColor="Red" SetFocusOnError="true" Display="Dynamic" ControlToValidate="txtFromDate"></asp:RequiredFieldValidator>
                            </div>
                            <div class="form-group col-md-4">
                               <label>To Date</label>
                               <asp:TextBox ID="txtToDate" runat="server" TextMode="Date" CssClass="form-control"></asp:TextBox>
                               <asp:RequiredFieldValidator ID="rfvToDate" runat="server" ErrorMessage="*"
                                ForeColor="Red" SetFocusOnError="true" Display="Dynamic" ControlToValidate="txtToDate"></asp:RequiredFieldValidator>
                            </div>
                            <div class="form-group col-md-4">
                                <asp:Button ID="btnSearch" runat="server" Text="Search" CssClass="btn btn-primary mt-md-4" 
                                    OnClick="btnSearch_Click"/>
                            </div>
                           
                        </div>
                        <div>
                              <h4 class="sub-title">Selling Report</h4>
                            <div class="card-block table-border-style" >
                                <div class="table-responsive">

                                    <asp:Repeater ID="rReport" runat="server"  >
     <HeaderTemplate>
         <table class="table data-table-export table-hover nowrap ">
             <thead>
             <tr>
                 <th class="table-plus">SrNo</th>
                 <th>Full Name</th>
                 <th>Email </th>
                 <th>Item Orders </th>
                 <th>Total Cost</th>
             </tr>
            </thead>
         <tbody>
     </HeaderTemplate>
     <ItemTemplate>
         <tr>
             <td class="table-plus"> <%# Eval("SrNo") %></td>
             <td> <%# Eval("Name") %></td> 
             <td><%# Eval("Email") %> </td>
             <td><%# Eval("TotalOrders") %> </td>
             <td> <%# Eval("TotalPrice") %></td>

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
                        &nbsp;
                        &nbsp;
                        &nbsp;
                        &nbsp;
                        <div class="row pl-4">
                            <asp:Label ID="lblTotal" runat="server"  Font-Bold="true" Font-Size="Small"></asp:Label>
                        </div>
                    </div>
                </div>
            </div> 
            
        </div>
        </div>
       

</asp:Content>
