<%@ Page Title="" Language="C#" MasterPageFile="~/User/User.Master" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="OnlineCakeShop.User.Profile" %>
 <%@ Import Namespace="OnlineCakeShop" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <% 
         string imageUrl = Session["ImageUrl"].ToString(); 
    %>


    <div class="breadcrumb-option">
     <div class="container">
         <div class="row">
             <div class="col-lg-6 col-md-6 col-sm-6">
                 <div class="breadcrumb__text">
                     <h2>User Information</h2>
                 </div>
             </div>
             <div class="col-lg-6 col-md-6 col-sm-6">
                 <div class="breadcrumb__links">
                     <a href="Default.aspx">Home</a>
                     <span>Profile</span>
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
                    <div class="d-flex justify-content-start">
                        <div class="image-container">
                            <img src="<%= Utils.GetImageUrl(imageUrl) %>" id="imgProfile" style="width=150px; height=150px;" 
                                class="img-thumbnail" />
                              </div>
                        
                       
                            
                            
                       
                        <div class="UserData ml-3">
                            <h2 class="d-block" style="font-weight: bold;" ForeColor="Red">
                                <a href="javascript:void(0);">
                                    <%Response.Write(Session["Name"]); %>
                                </a>
                            </h2>
                            &nbsp;
                            &nbsp;
                            &nbsp;
                            <h6 class="d-block">
                                <a href="javascript:void(0)">
                                    <asp:Label  ID="lblUsername"  runat="server" ToolTip="Unique Username">
                                        <%Response.Write(Session["username"]); %>
                                    </asp:Label>
                                </a>
                            </h6>
                             &nbsp;
                             &nbsp;
                            <h6 class="d-block">
                              <a href="javascript:void(0)">
                                        <asp:Label  ID="lblEmail"  runat="server" ToolTip="User Email">
                                 <%Response.Write(Session["Email"]); %>
                               </asp:Label>
                              </a>
                          </h6>
                             &nbsp;
                             &nbsp;
                            <h6 class="d-block">
                               <a href="javascript:void(0)">
                                    <asp:Label  ID="lblCreatedDate"  runat="server" ToolTip="Account Created On">
                                      <%Response.Write(Session["CreatedDate"]); %>
                                        </asp:Label>
                                   </a>
                                </h6>
                        </div>
                        </div>
                    <div>
                    <a href='Registration.aspx?id="<%Response.Write(Session["userId"]); %>"' class="btn btn-warning mt-5"><i class="fa fa-pencil"></i> Edit Details</a>
                </div>
</div>

                <div class="row">
                    <div class="col-12">
                        <ul class="nav nav-tabs mb-4" id="myTab" role="tablist">
                                    <li class="nav-item">
                                        <a class="nav-link active text-info " id="basicInfo-tab" data-toggle="tab" href="#basicInfo" role="tab" aria-controls="basicInfo" aria-selected="true">
                                            <i class="fa fa-id-badge mr-2"></i> Basic  Info</a>
                                    </li>
                                </ul>
                        <div class="tab-content ml-1" id="myTabContent">
                            <div class="tab-pane fade show active" id="basicInfo" role="tabpanel" aria-labelledby="basicInfo-tab">
                                <asp:Repeater  ID="rUserProfile"  runat="server">
                                    <ItemTemplate>
                                         <div class="row">
                                             <div class="col-sm-3 col-md-2 col-5">
                                                   <label style="font-weight: bold;">Full Name</label>
                                                </div>
                                             <div class="col-md-8 col-6" >
                                        <%# Eval("Name") %>
                                        </div>
                                            </div>
                                        <hr />
                                        <div class="row">
                                                  <div class="col-sm-3 col-md-2 col-5">
                                                   <label style="font-weight: bold;">Username</label>
                                              </div>
                                             <div class="col-md-8 col-6" >
                                                      <%# Eval("Username") %>
                                                   </div>
                                             </div>
                                        <hr />
                                      <div class="row">
                                       <div class="col-sm-3 col-md-2 col-5">
                                          <label style="font-weight: bold;">Mobile No.</label>
                                                 </div>
                                      <div class="col-md-8 col-6" >
                                  <%# Eval("Mobile") %>
                             </div>
                                    </div>
                                        <hr />
                                          <div class="row">
                                               <div class="col-sm-3 col-md-2 col-5">
                                                        <label style="font-weight: bold;">Email Address</label>
                                               </div>
                                             <div class="col-md-8 col-6" >
                                             <%# Eval("Email") %>
                                                 </div>
                                                 </div>
                                        <hr />
                                      <div class="row">
                                     <div class="col-sm-3 col-md-2 col-5">
                                      <label style="font-weight: bold;">Post Code</label>
                                     </div>
                             <div class="col-md-8 col-6" >
                              <%# Eval("PostCode") %>
                              </div>
                               </div>
                                        <hr />
                                      <div class="row">
                                        <div class="col-sm-3 col-md-2 col-5">
                                           <label style="font-weight: bold;">Address</label>
                                        </div>
                                    <div class="col-md-8 col-6" >
                                         <%# Eval("Address") %>
                                     </div>
                                  </div>
                                        <hr />
                                    </ItemTemplate>
                                </asp:Repeater>
                            </div>
                           
                           
                            </div>
                            </div>
                    </div>
               
                </div>


            </div>
        </div>
        </div>
        </div>
    
    </section>

</asp:Content>
