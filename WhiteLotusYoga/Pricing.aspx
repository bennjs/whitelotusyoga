<%@ Page Title="Our Prices" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Pricing.aspx.cs" Inherits="WhiteLotusYoga.Pricing" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <h2 class="text-center"><%: Title %></h2>
    <hr />

    <div class="row">
        <div class="col-md-6">
            <h3 class="text-center">Classes & Workshops</h3>
            <p class="pricingText">We have some great packages to reward our committed Yogis!</p>
            <br />
            <asp:Table class="pricesTable" runat="server">
                <asp:TableHeaderRow runat="server">
                    <asp:TableHeaderCell ColumnSpan="2" class="topHeader" runat="server">Single Sessions</asp:TableHeaderCell>
                </asp:TableHeaderRow>
                <asp:TableRow runat="server">
                    <asp:TableCell class="item" runat="server">Drop In Class</asp:TableCell>
                    <asp:TableCell class="price" runat="server">£20</asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server">
                    <asp:TableCell class="item" runat="server">Workshop</asp:TableCell>
                    <asp:TableCell class="price" runat="server">£75</asp:TableCell>
                </asp:TableRow>
                <asp:TableHeaderRow runat="server">
                    <asp:TableHeaderCell ColumnSpan="2" runat="server">Monthly Upfront Packages</asp:TableHeaderCell>
                </asp:TableHeaderRow>
                <asp:TableRow runat="server">
                    <asp:TableCell class="item" runat="server">One Class a Week</asp:TableCell>
                    <asp:TableCell class="price" runat="server">£40</asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server">
                    <asp:TableCell class="item" runat="server">Two Classes a Week</asp:TableCell>
                    <asp:TableCell class="price" runat="server">£56</asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server">
                    <asp:TableCell class="item" runat="server">Three Classes a Week</asp:TableCell>
                    <asp:TableCell class="price" runat="server">£64</asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server">
                    <asp:TableCell class="item" runat="server">Unlimited Classes a Month</asp:TableCell>
                    <asp:TableCell class="price" runat="server">£99</asp:TableCell>
                </asp:TableRow>
                <asp:TableHeaderRow runat="server">
                    <asp:TableHeaderCell ColumnSpan="2" runat="server">Annual Packages</asp:TableHeaderCell>
                </asp:TableHeaderRow>
                <asp:TableRow runat="server">
                    <asp:TableCell class="item" runat="server">6 Months Upfront</asp:TableCell>
                    <asp:TableCell class="price" runat="server">£480</asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server">
                    <asp:TableCell class="item" runat="server">12 Months Upfront</asp:TableCell>
                    <asp:TableCell class="price" runat="server">£580</asp:TableCell>
                </asp:TableRow>
            </asp:Table>
        </div>
        <div class="col-md-6">
            <h3 class="text-center">Rentals & Extras</h3>
            <p class="text-center">Don't have a mat or towel? Get thirsty? White Lotus has you covered!</p>
            <br />
            <asp:Table class="pricesTable" runat="server">
                <asp:TableHeaderRow runat="server">
                    <asp:TableHeaderCell ColumnSpan="2" class="topHeader" runat="server">Eqipment</asp:TableHeaderCell>
                </asp:TableHeaderRow>
                <asp:TableRow runat="server">
                    <asp:TableCell class="item" runat="server">Mat Rental</asp:TableCell>
                    <asp:TableCell class="price" runat="server">£1.00</asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server">
                    <asp:TableCell class="item" runat="server">Towel Rental</asp:TableCell>
                    <asp:TableCell class="price" runat="server">£1.00</asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server">
                    <asp:TableCell class="item" runat="server">White Lotus LDN Yoga Mat</asp:TableCell>
                    <asp:TableCell class="price" runat="server">£15.00</asp:TableCell>
                </asp:TableRow>
                <asp:TableHeaderRow runat="server">
                    <asp:TableHeaderCell ColumnSpan="2" runat="server">Refreshments</asp:TableHeaderCell>
                </asp:TableHeaderRow>
                <asp:TableRow runat="server">
                    <asp:TableCell class="item" runat="server">Bottled Spring Water</asp:TableCell>
                    <asp:TableCell class="price" runat="server">£1.50</asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server">
                    <asp:TableCell class="item" runat="server">Fresh Fruit Smoothie</asp:TableCell>
                    <asp:TableCell class="price" runat="server">£4.50</asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server">
                    <asp:TableCell class="item" runat="server">Bounce Balls</asp:TableCell>
                    <asp:TableCell class="price" runat="server">£2.00</asp:TableCell>
                </asp:TableRow>
            </asp:Table>
        </div>
    </div>
    <div class="row" id="extraInformationRow">
        <br />
        <br />
        <h3 class="pricingTitle">Extra Information</h3>
        <p class="pricingExtraInfoTitle">Annual Packages</p>
        <p>All of our Annual Packages now included free mat and towel rental!</p>
        <p class="pricingExtraInfoTitle">Concessions</p>
        <p>Students, Over 65's and members of our armed forces get 15% off! Valid ID must be shown.</p>
        <p class="pricingExtraInfoTitle">Cancellations</p>
        <p>All of our Annual Packages now included free mat and towel rental!</p>
        <p class="pricingExtraInfoTitle">Freeze Periods</p>
        <p>Your account can be frozen twice a year, for up to one month, at a cost of £20 a month.</p>
        <p>Please talk to one of our recptionists or email accounts@whitelotuslondon.co.uk</p>
    </div>
</asp:Content>
