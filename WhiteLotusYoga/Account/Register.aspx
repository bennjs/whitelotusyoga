<%@ Page Title="Register" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="WhiteLotusYoga.Account.Register" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <h2><%: Title %></h2>
    <p class="text-danger">
        <asp:Literal runat="server" ID="ErrorMessage" />
    </p>
    <div class="row">
        <div class="panel panel-default">
            <div class="panel-heading">
                <h3 class="registrationTitle">Register with White Lotus!</h3>
            </div>
            <div class="panel-body">
                <div class="form-group">
                    <asp:TextBox runat="server" ID="firstName" CssClass="form-control" />
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="firstName"
                        CssClass="text-danger" ErrorMessage="Please enter your first name!" />
                    <asp:TextBox runat="server" ID="lastName" CssClass="form-control" />
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="lastName"
                        CssClass="text-danger" ErrorMessage="Please enter your last name!" />
            </div>
            </div>
            <div class="form-group">
                <asp:TextBox runat="server" ID="usernameTextBox" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="usernameTextBox"
                    CssClass="text-danger" ErrorMessage="Please enter a username!" />
            </div>
            <div class="form-group">
                <asp:TextBox runat="server" ID="emailTextBox" CssClass="form-control" TextMode="Email" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="emailTextBox"
                    CssClass="text-danger" ErrorMessage="Please enter an email!" />
            </div>
            <div class="form-group">
                <asp:TextBox runat="server" ID="passwordTextBox" TextMode="Password" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="passwordTextBox"
                    CssClass="text-danger" ErrorMessage="Please select a password!" />
            </div>
        </div>
    </div>




    <%--        <div class="form-horizontal">
            <h4 class="registrationTitle">Please register with White Lotus!</h4>
            <hr />
            <asp:ValidationSummary runat="server" CssClass="text-danger" />
            <div class="form-group">
                <asp:Label runat="server" AssociatedControlID="Email" CssClass="col-md-2 control-label">Email</asp:Label>
                <div class="col-md-10">
                    <asp:TextBox runat="server" ID="Email" CssClass="form-control" TextMode="Email" />
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="Email"
                        CssClass="text-danger" ErrorMessage="The email field is required." />
                </div>
            </div>
            <div class="form-group">
                <asp:Label runat="server" AssociatedControlID="Password" CssClass="col-md-2 control-label">Password</asp:Label>
                <div class="col-md-10">
                    <asp:TextBox runat="server" ID="Password" TextMode="Password" CssClass="form-control" />
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="Password"
                        CssClass="text-danger" ErrorMessage="The password field is required." />
                </div>
            </div>
            <div class="form-group">
                <asp:Label runat="server" AssociatedControlID="ConfirmPassword" CssClass="col-md-2 control-label">Confirm password</asp:Label>
                <div class="col-md-10">
                    <asp:TextBox runat="server" ID="ConfirmPassword" TextMode="Password" CssClass="form-control" />
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="ConfirmPassword"
                        CssClass="text-danger" Display="Dynamic" ErrorMessage="The confirm password field is required." />
                    <asp:CompareValidator runat="server" ControlToCompare="Password" ControlToValidate="ConfirmPassword"
                        CssClass="text-danger" Display="Dynamic" ErrorMessage="The password and confirmation password do not match." />
                </div>
            </div>
            <div class="form-group">
                <div class="col-md-offset-2 col-md-10">
                    <asp:Button runat="server" OnClick="CreateUser_Click" Text="Register" CssClass="btn btn-default" />
                </div>
            </div>
        </div>
    </div>--%>
</asp:Content>
