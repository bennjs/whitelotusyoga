﻿<%@ Page Title="Log in" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WhiteLotusYoga.Account.Login" Async="true" %>

<%@ Register Src="~/Account/OpenAuthProviders.ascx" TagPrefix="uc" TagName="OpenAuthProviders" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <br />
    <br />
    <div class="container">
        <div class="row centered-form">
            <div class="col-xs-12 col-sm-8 col-md-4 col-sm-offset-2 col-md-offset-4">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h3 class="panel-title text-center">Log In</h3>
                    </div>
                    <div class="panel-body">
                        <div class="form-group">
                            <input type="text" name="username" id="username" class="form-control input-sm" placeholder="Username">
                        </div>
                        <div class="form-group">
                            <input type="password" name="password" id="password" class="form-control input-sm" placeholder="Password">
                        </div>
                        <input type="submit" value="Log In" name="logInButton" runat="server" onServerClick="logInButton_Click" class="btn btn-primary btn-block">
                        <hr />
                        <div class="container text-center">
                            <a runat="server" href="~/Account/Register">Need to register as a new user?</a>
                        </div>                        
                    </div>
                </div>

            </div>
        </div>
    </div>
</asp:Content>
