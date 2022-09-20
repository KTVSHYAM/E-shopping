<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ViewProducts.aspx.cs" Inherits="Ecommerce.ViewProducts" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">

        $(document).ready(function () {
            $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).DataTable();
        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <div class="container">
            <div class="row">

                <div class="col-sm-12">
                   
                    <br />
                    <div class="row">
                         <div class="card">
        <div class="card-body">

            <div class="row">
                
                <div class="col-md-12 form-group">
                    <center>
                <h4 style="font-family:Cambria">Products</h4>
                        </center>
                </div>
                <div class="form-group" style="width:100px">
                    <asp:DropDownList class="form-control" ID="Productcategory" runat="server" Font-Names="Cambria" AutoPostBack="True" OnSelectedIndexChanged="Productcategory_SelectedIndexChanged" DataSourceID="SqlDataSource2">
                        <asp:ListItem></asp:ListItem>
                                
                           </asp:DropDownList>
                            
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:EcomDbconn %>" SelectCommand="SELECT * FROM [ecom_Category]"></asp:SqlDataSource>
                            
                </div>
                    
            </div>

            <div class="row">
                <div class="col">
                <hr>
                </div>
            </div>
            <div class="row">
                <div class="col">
                   <asp:GridView class="table table-striped table-bordered" ID="ProductGrid" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" OnRowCommand="ProductGrid_RowCommand">
                        <Columns>
                            <asp:BoundField DataField="ProductId" HeaderText="ProductId" SortExpression="ProductId" />

                            
                            <asp:TemplateField>
                                <ItemTemplate>
                                    <div class="container-fluid">
                                        <div class="row">
                                            <div class="col-lg-10">
                                                <div class="row">
                                                    <div class="col-12">

                                                        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Cambria" Font-Size="X-Large" Text='<%# Eval("Pname") %>' CssClass="auto-style1"></asp:Label>

                                                    </div>
                                                </div>

                                                <div class="row">
                                                    <div class="col-12">

                                                        <span class="auto-style1">by-</span><asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Names="Cambria" Text='<%# Eval("Pbrand") %>' CssClass="auto-style1"></asp:Label>
                                                        <span class="auto-style1">|Stock-</span><asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Names="Cambria" Text='<%# Eval("Pstock") %>' CssClass="auto-style1"></asp:Label>

                                                        |<asp:Label ID="Label5" runat="server" Text='<%# Eval("Pcategory") %>' CssClass="auto-style1"></asp:Label>

                                                    </div>
                                                </div>

                                                <div class="row">
                                                    <div class="col-12">

                                                        <span class="auto-style1">Price-</span><asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Names="Cambria" Font-Size="Large" Text='<%# Eval("Pprice") %>' CssClass="auto-style1"></asp:Label>

                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-12">
                                                        <asp:DropDownList ID="quantity" runat="server">
                                                            <asp:ListItem>1</asp:ListItem>
                                                            <asp:ListItem>2</asp:ListItem>
                                                            <asp:ListItem>3</asp:ListItem>
                                                            <asp:ListItem>4</asp:ListItem>
                                                            <asp:ListItem>5</asp:ListItem>
                                                        </asp:DropDownList>
                                                    </div>
                                                </div>

                                                <div class="row">
                                                    <div class="col-12">
                                                        <asp:LinkButton CssClass="btn btn-warning" ID="addcart" runat="server" Text="Add to Cart" ForeColor="White" style="font-family: Cambria" CommandName="AddCart" CommandArgument="<%# Container.DataItemIndex %>"/>
                                                        &nbsp;
                                                    </div>
                                                </div>

                                            </div>
                                            <div class="col-lg-2">
                                                <asp:Image CssClass="img-fluid p-0" Width="100" ID="Image1" runat="server" ImageUrl='<%# Eval("Pimage") %>' />
                                            </div>
                                        </div>
                                    </div>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                        <PagerStyle Font-Bold="True" Font-Names="Cambria" />
                        <RowStyle Font-Names="Cambria" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:EcomDbconn %>" SelectCommand="SELECT * FROM [ecom_products]">
                    
                    </asp:SqlDataSource>
                    </div>
            </div>

        </div>
    </div>
                            
                   
                                <asp:Label ID="producterrmsg" runat="server" style="text-align: left" Text="No Products Found" Visible="False" Font-Names="Cambria" ForeColor="#FF3300"></asp:Label>
                    </div>
                </div>
                <center>
                        <i class="fa-solid fa-house-user btn btn-lg btn-outline-light btn-info m-1"></i><span class="clearfix"></span>
                            
                   
                                </div>
        </div>
</asp:Content>
