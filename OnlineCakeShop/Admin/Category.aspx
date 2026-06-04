<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Category.aspx.cs" Inherits="OnlineCakeShop.Admin.Category" %>   
<%@ Import Namespace="OnlineCakeShop" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">


         <script>
             window.onload = function () {
                 var seconds = 5;
                 setTimeout(function () {
                     document.getElementById("<%=lblMsg.ClientID %>").style.display = "none";
        }, seconds * 1000);
             };
         </script>
  <script>
     function ImagePreview(input) {
         if (input.files && input.files[0]) {
             var reader = new FileReader();
             reader.onload = function (e) {
                 $('#<%=imgCategory.ClientID%>').prop('src', e.target.result)
                     .width(200)
                     .height(200);
             };
             reader.readAsDataURL(input.files[0]);
         }
     }
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
                       <li class="navbar-brand"> <a href="#!"> Category </a>

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
            <div class="col-lg-4">
                <div class="card card-chart">
                    <div class="card-header">
                       <h4 class="sub-title"> Category</h4>
                    </div>
                    <div class="card-body">
                        <div class="form-group">
                              <label>Category Name</label>
                        <div>
                         <asp:TextBox ID="txtName" runat="server" CssClass="form-control" placeholder="Enter Category Name" required ></asp:TextBox>
                         <asp:HiddenField ID="hdnId" runat="server" Value="0" />
                            </div>
                    </div>
                        
                        <div class="" >

                            <label>Category Image</label>
                            <div>
                                <asp:FileUpload ID="fuCategoryImage" runat="server" CssClass="form-control"
                                    onchange="ImagePreview(this);"/>
                            </div>
                        </div>
                        &nbsp;
                        &nbsp;

                         <div class="">

                            <asp:CheckBox ID="cbIsActive" runat="server" Text="&nbsp; IsActive" CssClass=""   />

                        </div>
                        <div class="pb-5" ">
                            <asp:Button ID="btnAddOrUpdate" runat="server" Text="Add" CssClass="btn btn-primary" Width="115px"
                                OnClick=" btnAddOrUpdate_Click" />
                            &nbsp; &nbsp;
                            &nbsp;
                            &nbsp;
                            <asp:Button ID="btnClear" runat="server" Text="Clear" CssClass="btn btn-primary" CausesValidation="false" Width="115px"
                                OnClick="btnClear_Click"/>
                        
                        </div>


                        <div>
                            <asp:Image ID="imgCategory" runat="server" cssClass="img-thumbnail"></asp:Image>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-8 col-md-8 col-sm-6">
                <div class="card card-chart">
                    <div class="card-header">
                        
                              <h4 class="sub-title"> Category List</h4>
                            <div class="card-block table-border-style" >
                                <div class="table-responsive">

                                   <asp:Repeater ID="rCategory" runat="server" OnItemCommand="rCategory_ItemCommand1" OnItemDataBound="rCategory_ItemDataBound1" >
                                        <HeaderTemplate>
                                            <table class="table data-table-export table-hover nowrap ">
                                                <thead>
                                                <tr>
                                                    <th class="table-plus"> Name</th>
                                                    <th>Image</th>
                                                    <th>IsActive </th>
                                                    <th>CreatedDate</th>
                                                    <th class="datatable-nosort"> Action</th>
                                                </tr>
                                               </thead>
                                            <tbody>
                                        </HeaderTemplate>
                                        <ItemTemplate>
                                            <tr>
                                                <td class="table-plus"> <%# Eval("Name") %></td>
                                                <td> 
                                                    <img alt=""  width=40 src="<%# Utils.GetImageUrl( Eval("ImageUrl")) %>" />
                                                </td>
                                                <td>
                                                    <asp:Label ID="lblIsActive" runat="server" Text='<%# Eval("IsActive") %>'></asp:Label>
                                                </td>    
                                                <td> <%# Eval("CreatedDate") %></td>
                                                <td>
                                                    <asp:LinkButton ID="lnkEdit" runat="server" Text="Edit" CssClass="badge badge-primary"
                                                        CommandArgument='<%# Eval("CategoryId") %>' CommandName="edit"   >
                                                            <i class="fas fa-pencil-alt"></i>
                                                    </asp:LinkButton>
                                                    <asp:LinkButton ID="lnkDelete"   runat="server" Text="Delete" CommandName="delete"
                                                        CssClass="badge badge-danger" CommandArgument='<%# Eval("CategoryId") %>'
                                                        OnClientClick="return confirm('Do you want to delete this category?');">
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
