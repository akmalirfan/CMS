<%@ Page Title="Profile" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="CMS.Profile" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <asp:LoginView runat="server" ViewStateMode="Disabled">
        <AnonymousTemplate>
            You are not logged in.
        </AnonymousTemplate>

        <LoggedInTemplate>
            <div>
                <h1>Hello, <%: Context.User.Identity.GetUserName()  %></h1>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server"
                    ConnectionString="Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\cms.mdf;Integrated Security=True"
                    ProviderName="System.Data.SqlClient"
                    SelectCommand="SELECT * FROM [Subject] WHERE ([student] = @student)">
                    <SelectParameters>
                        <asp:QueryStringParameter Name="student" QueryStringField="studentID" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server"
                    ConnectionString="Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\cms.mdf;Integrated Security=True"
                    ProviderName="System.Data.SqlClient"
                    SelectCommand="SELECT * FROM [Student] WHERE ([email] = @email)">
                    <SelectParameters>
                        <asp:SessionParameter Name="email" SessionField="username" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <br />
                <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="matricno" DataSourceID="SqlDataSource2" Height="50px" Width="125px">
                    <Fields>
                        <asp:BoundField DataField="matricno" HeaderText="matricno" ReadOnly="True" SortExpression="matricno" />
                        <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                        <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                        <asp:BoundField DataField="icno" HeaderText="icno" SortExpression="icno" />
                        <asp:BoundField DataField="programme" HeaderText="programme" SortExpression="programme" />
                    </Fields>
                </asp:DetailsView>
                <br />
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource1">
                    <Columns>
                        <asp:BoundField DataField="id" HeaderText="id" ReadOnly="True" SortExpression="id" />
                        <asp:BoundField DataField="code" HeaderText="code" SortExpression="code" />
                        <asp:BoundField DataField="credit" HeaderText="credit" SortExpression="credit" />
                        <asp:BoundField DataField="section" HeaderText="section" SortExpression="section" />
                        <asp:BoundField DataField="mark" HeaderText="mark" SortExpression="mark" />
                        <asp:BoundField DataField="student" HeaderText="student" SortExpression="student" />
                    </Columns>
                </asp:GridView>
    
            </div>
        </LoggedInTemplate>
    </asp:LoginView>
</asp:Content>
