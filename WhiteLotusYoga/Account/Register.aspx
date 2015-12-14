<%@ Page Title="Register" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="WhiteLotusYoga.Account.Register" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">

    <p class="text-danger">
        <asp:Literal runat="server" ID="ErrorMessage" />
    </p>
    <br />
    <br />
    <div class="container">
        <div class="row centered-form">
            <div class="col-xs-12 col-sm-8 col-md-4 col-sm-offset-2 col-md-offset-4">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h3 class="panel-title">New to White Lotus? Register! <small><a runat="server" href="~/Account/Login">(Existing user?)</a></small></h3>
                    </div>
                    <div class="panel-body">
                        <p>To book classes we'll need to know your name. Don't worry - we'll keep this private from other users.</p>
                        <div class="row">
                            <div class="col-xs-6 col-sm-6 col-md-6">
                                <div class="form-group">
                                    <input type="text" name="firstNameInput" id="firstNameInput" class="form-control input-sm" placeholder="First Name">
                                </div>
                            </div>
                            <div class="col-xs-6 col-sm-6 col-md-6">
                                <div class="form-group">
                                    <input type="text" name="lastNameInput" id="lastNameInput" class="form-control input-sm" placeholder="Last Name">
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <input type="email" name="emailInput" id="emailInput" class="form-control input-sm" placeholder="Email Address">
                        </div>
                        <div class="form-group">
                            <input type="text" name="usernameInput" id="usernameInput" class="form-control input-sm" placeholder="Pick a Username!">
                        </div>
                        <div class="form-group">
                            <input type="password" name="passwordInput" id="passwordInput" class="form-control input-sm" placeholder="Password (6 or more characters)">
                        </div>
                        <input type="submit" value="Register" name="registerButton" runat="server" onServerClick="registerButton_Click" class="btn btn-primary btn-block">
                    </div>
                </div>                
            </div>
        </div>
    </div>
</asp:Content>
