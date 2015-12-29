<%@ Page Title="Manage Classes" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ManageClasses.aspx.cs" Inherits="WhiteLotusYoga.Admin.ManageClasses" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
        <div class="row">
            <h3 class="text-center">Class Manager</h3>
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
                <label for="classManagementIDInput">To Cancel or Remove a Class, please enter the classes Booking ID:</label>
                <input type="number" name="classManagementIDInput" id="classManagementIDInput" class="form-control input-sm">
            </div>
            <div class="form-group">
                <input type="radio" name="choice" value="cancel" checked>
                Cancel
                <input type="radio" name="choice" value="remove" checked>
                Remove
            </div>
            <input type="submit" value="Go!" name="manageClass" runat="server" onserverclick="manageClass_Click" class="btn btn-primary btn-block">
            <br />
        </div>
    </div>
</asp:Content>
