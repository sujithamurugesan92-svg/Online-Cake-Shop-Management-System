<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Users.aspx.cs" Inherits="OnlineCakeShop.Admin.Users" %>
<%@ Import Namespace="OnlineCakeShop" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

        <script>
    window.onload = function () {
        var seconds = 5;
        setTimeout(function () {
            document.getElementById("<%=lblMsg.ClientID %>").style.display ="none";
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
                       <li class="navbar-brand"> <a href="#!"> Users </a>

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
                        
                              <h4 class="sub-title"> User's List</h4>
                            <div class="card-block table-border-style" >
                                <div class="table-responsive">

                                   <asp:Repeater ID="rUsers" runat="server" OnItemCommand="rUsers_ItemCommand"  >
                                        <HeaderTemplate>
                                            <table class="table data-table-export table-hover nowrap ">
                                                <thead>
                                                <tr>
                                                    <th class="table-plus">SrNo</th>
                                                    <th>Full Name</th>
                                                    <th>Username </th>
                                                    <th>Email </th>
                                                    <th>JoinedDate</th>
                                                    <th class="datatable-nosort">Delete</th>
                                                </tr>
                                               </thead>
                                            <tbody>
                                        </HeaderTemplate>
                                        <ItemTemplate>
                                            <tr>
                                                <td class="table-plus"> <%# Eval("SrNo") %></td>
                                                <td><%# Eval("Name") %> </td>
                                                <td> <%# Eval("UserName") %></td> 
                                                <td><%# Eval("Email") %> </td>
                                                <td> <%# Eval("CreatedDate") %></td>
                                                <td>
                                                    <asp:LinkButton ID="lnkDelete"   runat="server" Text="Delete" CommandName="delete"
                                                              CssClass="badge badge-danger" CommandArgument='<%# Eval("UserId") %>'
                                                                OnClientClick="return confirm('Do you want to delete this User?');">
                                                                <i class="fa fa-trash"></i>
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
            </div> 
            
        </div>
        
        </div>

</asp:Content>
