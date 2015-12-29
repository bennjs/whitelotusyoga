<%@ Page Title="Welcome!" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WhiteLotusYoga._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <div class="container">
            <h1>White  Lotus  Yoga</h1>
            <p class="lead">
                <b>Peace. Strength. Happiness.</b>
            <br />
            <p><a runat="server" href="~/Account/Register" class="btn btn-primary btn-lg">Join Today</a></p>
        </div>
    </div>

    <div class="row">
        <div class="col-md-6">
            <h2 class="text-center"><%: DateTime.Now.ToString("MMMM") %>'s Offer!</h2>
            <p>
                Friendly Fridays! For this month only, White Lotus members with Annual Packages can bring along a guest to sessions on Friday's for no cost!
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
                White Lotus is London's favourite new Yoga Studio south of the river!
                Relaxation, stillness and peace of mind are moments away under the tutelage of our experienced team!
                Nature lovers will look forward to our unique summer workshops, hosted in the beautiful Greenwich Park.
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
            <div class="container">
                <table class="homePageTable">
                    <tr>
                        <td>Class Name </td>
                        <td>Teacher </td>
                        <td>Studio </td>
                        <td>Start </td>
                        <td>End </td>
                        <td>Level </td>
                    </tr>
                    <%=getTodaysClassLoopData()%>
                </table>
                <br />
                <div class="button-center">
                    <p>
                        <a class="btn btn-default" runat="server" href="~/Schedule">Book Classes &raquo;</a>
                    </p>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
