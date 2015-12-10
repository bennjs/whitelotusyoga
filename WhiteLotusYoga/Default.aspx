<%@ Page Title="Welcome!" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WhiteLotusYoga._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <div class="container">
            <h1>White  Lotus  Yoga</h1>
            <p class="lead">
                Lorem ipsum dolor sit amet, consectetur adipiscing elit.
            <br />
                Donec finibus ut velit et condimentum.
            </p>
            <p><a runat="server" href="~/" class="btn btn-primary btn-lg">Find A Class Today</a></p>
        </div>
    </div>

    <div class="row">
        <div class="col-md-6">
            <h2 class="text-center"><%: DateTime.Now.ToString("MMMM") %>'s Offer!</h2>
            <p>
                Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean tristique metus orci, id consequat ex pulvinar nec. Donec finibus ut velit et condimentum. Nulla facilisi.
            </p>
            <div class="button-center">
                <p>
                    <a class="btn btn-default" id="textCenter" runat="server" href="~/Pricing">See Our Full Pricing &raquo;</a>
                </p>
            </div>

        </div>
        <div class="col-md-6">
            <h2 class="text-center">About White Lotus LDN</h2>
            <p>
                Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean tristique metus orci, id consequat ex pulvinar nec. Donec finibus ut velit et condimentum. Nulla facilisi. Sed quis semper neque. Donec porttitor orci in nisl congue suscipit. Pellentesque et quam pharetra, rutrum diam sed, gravida elit. Sed tempor lectus at ligula consequat, sed pretium nunc vehicula. Cras vel mattis tortor. Nunc pharetra neque ut massa malesuada, ac varius mi placerat.
            </p>
            <div class="button-center">
                <p>
                    <a class="btn btn-default" runat="server" href="~/Team">Meet Our Team &raquo;</a>
                </p>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-md-12">
            <hr />
            <h2 class="text-center">Today's Classes</h2>
            <p>
                NuGet is a free Visual Studio extension that makes it easy to add, remove, and update libraries and tools in Visual Studio projects.
            </p>
            <div class="button-center">
                <p>
                    <a class="btn btn-default" runat="server" href="~/Schedule">Search Other Dates &raquo;</a>
                </p>
            </div>
        </div>
    </div>
</asp:Content>
