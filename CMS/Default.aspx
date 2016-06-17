<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="CMS._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1>Course Management System</h1>
        <p class="lead">Course Management System</p>
    </div>

    <div class="row">
        <div class="col-md-4">
            <h2>
                <asp:XmlDataSource ID="utmnewsrss" runat="server" DataFile="http://www.news.utm.my/feed/" XPath="rss/channel/item"></asp:XmlDataSource>
            </h2>
            <asp:DataList ID="DataList1" runat="server" DataSourceID="utmnewsrss">
                <ItemTemplate>
                    <div>
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# XPath("link") %>' Text='<%# XPath("title") %>'></asp:HyperLink>
                        <br />
                        <asp:Label ID="Label1" runat="server" Text='<%# XPath("description") %>'></asp:Label>
                    </div>
                </ItemTemplate>
            </asp:DataList>
        </div>
        <div class="col-md-4">
            <h2>&nbsp;</h2>
        </div>
    </div>

</asp:Content>
