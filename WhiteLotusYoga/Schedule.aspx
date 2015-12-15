<%@ Page Title="Upcoming Classes & Workshops" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Schedule.aspx.cs" Inherits="WhiteLotusYoga.Schedule" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="container">
        <div class="row">
            <h3 class="text-center">Upcoming Classes</h3>
            <table class="classScheduleTable">
                <tr>
                    <td>Class Name </td>
                    <td>Teacher </td>
                    <td>Description </td>
                    <td>Studio </td>
                    <td>Start </td>
                    <td>End </td>
                    <td>Date </td>
                    <td>Level </td>
                    <td>Booking ID </td>
                </tr>
                <%=getClassLoopData()%>
            </table>
            <br />
            <div class="form-group">
                <label for="classBookingIDInput">To Confirm a Class Booking, please enter the classes Booking ID:</label>
                <input type="number" name="capacityInput" id="classBookingIDInput" class="form-control input-sm">
            </div>
            <input type="submit" value="Book Class!" name="bookClass" runat="server" onserverclick="bookClass_Click" class="btn btn-primary btn-block">
            <br />
        </div>
        <hr />
        <div class="row">
            <h3 class="text-center">Upcoming Workshops</h3>
            <table class="workshopScheduleTable">
                <tr>
                    <td>Class Name </td>
                    <td>Teacher </td>
                    <td>Description </td>
                    <td>Studio </td>
                    <td>Start </td>
                    <td>End </td>
                    <td>Date </td>
                    <td>Booking ID </td>
                </tr>
                <%=getWorkshopLoopData()%>
            </table>
            <br />
            <div class="row">
                <div class="form-group col-lg-1">
                    <label for="workshopBookingIDInput">To Confirm a Class Booking, please enter the classes Booking ID:</label>
                    <input type="number" name="capacityInput" id="workshopBookingIDInput" class="form-control input-sm">
                </div>
            </div>
            <div class="row">
                <input type="submit" value="Book Workshop!" name="bookWorkshop" runat="server" onserverclick="bookWorkshop_Click" class="btn btn-primary btn-block">
            </div>
            <br />
        </div>
    </div>
</asp:Content>
