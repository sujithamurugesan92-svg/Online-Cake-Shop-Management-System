<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Product.aspx.cs" Inherits="OnlineCakeShop.Admin.Product" %>
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
                $('#<%=imgProduct.ClientID%>').prop('src', e.target.result)
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
                       <li class="navbar-brand"> <a href="#!"> Product </a>

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
            <div class="col-lg-12">
                <div class="card card-chart">
                    <div class="card-header">
                       <h4 class="sub-title"> Product</h4>
                    </div>
                     <div class="card-body">
                        <div class="form-group">
                              <label>Product Name</label>
                        <div>
                         <asp:TextBox ID="txtName" runat="server" CssClass="form-control" 
                             placeholder="Enter Product Name"  ></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                ErrorMessage="Name is required" ForeColor="Red" Display="Dynamic"
                                SetFocusOnError="true" ControlToValidate="txtName">
                            </asp:RequiredFieldValidator>
                            <asp:HiddenField ID="hdnId" runat="server" Value="0"/>
                    </div>
                            </div>
                        

                             <div class="form-group">
          <label>Product Description</label>
    <div>
     <asp:TextBox ID="txtDescription" runat="server" CssClass="form-control" 
         placeholder="Enter Product Description" TextMode="MultiLine" ></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
            ErrorMessage="Description is required" ForeColor="Red" Display="Dynamic"
            SetFocusOnError="true" ControlToValidate="txtDescription">
        </asp:RequiredFieldValidator>
</div>
        </div>

                          <div class="form-group">
          <label>Product Price(₹)</label>
    <div>
     <asp:TextBox ID="txtPrice" runat="server" CssClass="form-control" 
         placeholder="Enter Product Price"  ></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
            ErrorMessage="Price is required" ForeColor="Red" Display="Dynamic"
            SetFocusOnError="true" ControlToValidate="txtPrice">
        </asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
            ErrorMessage="Price must be in decimal" ForeColor="Red" Display="Dynamic"
            SetFocusOnError="true" ControlToValidate="txtPrice"
            ValidationExpression="^\d{0,8}(\.\d{1,4})?$"></asp:RegularExpressionValidator> 
</div>
        </div>

                         <div class="form-group">
          <label>Product Quantity</label>
    <div>
     <asp:TextBox ID="txtQuantity" runat="server" CssClass="form-control" 
         placeholder="Enter Product Quantity"  ></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
            ErrorMessage="Quantity is required" ForeColor="Red" Display="Dynamic"
            SetFocusOnError="true" ControlToValidate="txtQuantity">
        </asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
            ErrorMessage="Quantity must be non negative" ForeColor="Red" Display="Dynamic"
            SetFocusOnError="true" ControlToValidate="txtQuantity"
            ValidationExpression="^([1-9]\d*|0)$"></asp:RegularExpressionValidator> 
</div>
        </div>


                        <div class="" >

                            <label>Product Image</label>
                            <div>
                                <asp:FileUpload ID="fuProductImage" runat="server" CssClass="form-control"
                                    onchange="ImagePreview(this);"/>
                            </div>
                        </div>
                        &nbsp;
                        &nbsp;



                          <div class="form-group">
          <label>Product Category</label>
    <div>
        <asp:DropDownList ID="ddlCategories" runat="server" CssClass="form-control" 
            DataSourceID="SqlDataSource1" DataTextField="Name" DataValueField="CategoryId"
            AppendDataBoundItems="true">
            <asp:ListItem Value="0">Select Category</asp:ListItem>
        </asp:DropDownList>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
            ErrorMessage="Category is required" ForeColor="Red" Display="Dynamic"
            SetFocusOnError="true" ControlToValidate="ddlCategories" InitialValue="0">
        </asp:RequiredFieldValidator>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:cs %>" SelectCommand="SELECT [CategoryId], [Name] FROM [Categories]"></asp:SqlDataSource>
        </div>
</div>

                         <div class="">

                            <asp:CheckBox ID="cbIsActive" runat="server" Text="&nbsp; IsActive" CssClass=""   />

                        </div>
                        <div class="pb-5" ">
                            <asp:Button ID="btnAddOrUpdate" runat="server" Text="Add" CssClass="btn btn-primary" Width="115px"
                                OnClick="btnAddOrUpdate_Click1"/>
                            &nbsp; &nbsp;
                            &nbsp;
                            &nbsp;
                            <asp:Button ID="btnClear" runat="server" Text="Clear" CssClass="btn btn-primary" CausesValidation="false" Width="115px"
                               OnClick="btnClear_Click" />
                        
                        </div>


                        <div>
                            <asp:Image ID="imgProduct" runat="server" cssClass="img-thumbnail"></asp:Image>
                        </div>
                    </div>
                </div>
            </div>
           
          </div>
        </div>
        
        </div>
       

</asp:Content>
