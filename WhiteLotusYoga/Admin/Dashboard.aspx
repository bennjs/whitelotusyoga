<%@ Page Title="Management Dashboard" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="WhiteLotusYoga.dashboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <h2 class="text-center"><%: Title %></h2>
    <hr />
    <div class="row">
        <h3 class="text-center">Manage Classes</h3>
        <div class="panel-group">
            <div class="col-md-6">
                <div class="panel panel-info">
                    <div class="panel-heading text-center">Quick Glance</div>
                    <div class="panel-body">
                        <p>Next Class:</p>
                        <p>Classes Today:</p>
                        <p>Future Classes:</p>
                        <p>Previous Classes:</p>
                        <p>Total Number of Classes:</p>
                    </div>
                </div>
            </div>
            <div class="col-md-6">
                <div class="panel panel-info">
                    <div class="panel-heading text-center">Class Actions</div>
                    <div class="panel-body">
                        <a href="CreateClass">
                            <p class="text-center">Create a New Class</p>
                        </a>
                        <a href="ManageClasses">
                            <p class="text-center">Manage Classes</p>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="row">
        <h3 class="text-center">Manage Workshops</h3>
        <div class="panel-group">
            <div class="col-md-6">
                <div class="panel panel-info">
                    <div class="panel-heading text-center">Quick Glance</div>
                    <div class="panel-body">
                        <p>Next Workshop:</p>
                        <p>Workshop Today:</p>
                        <p>Future Workshops:</p>
                        <p>Previous Workshops:</p>
                        <p>Total Number of Workshops:</p>
                    </div>
                </div>
            </div>
            <div class="col-md-6">
                <div class="panel panel-info">
                    <div class="panel-heading text-center">Workshop Actions</div>
                    <div class="panel-body">
                        <a href="CreateWorkshop">
                            <p class="text-center">Create a New Workshop</p>
                        </a>
                        <a href="ManageWorkshop">
                            <p class="text-center">Manage Workshops</p>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="row">
        <h3 class="text-center">Staff</h3>
        <div class="panel-group">
            <div class="col-md-6">
                <div class="panel panel-info">
                    <div class="panel-heading text-center">We currently have <%=getStaffCount()%> Members of Staff</div>
                    <div class="panel-body">
                        <table class="staffDashboardTable">
                            <tr>
                                <td id="staffHeader">Name </td>
                                <td id="staffHeader">Bio </td>
                            </tr>
                            <%=getStaffLoopData()%>
                        </table>
                        <a href="../Team.aspx">
                            <p class="text-right">See Full Staff List</p>
                        </a>
                    </div>
                </div>
            </div>
            <div class="col-md-6">
                <div class="panel panel-info">
                    <div class="panel-heading text-center">Create A New Staff Member</div>
                    <div class="panel-body">
                        <div class="form-group">
                            <label for="firstNameInput">First Name:</label>
                            <input class="form-control input-sm" name="firstNameInput" id="firstNameInput" type="text">
                        </div>
                        <div class="form-group">
                            <label for="lastNameInput">Last Name:</label>
                            <input class="form-control input-sm" name="lastNameInput" id="lastNameInput" type="text">
                        </div>
                        <div class="form-group">
                            <label for="shortBioInput">Short Bio:</label>
                            <input class="form-control input-sm" maxlength="140" name="shortBioInput" id="shortBioInput" placeholder="140 characters max" type="text">
                        </div>
                        <input type="submit" value="Create Teacher" name="teacherCreateButton" runat="server" onserverclick="createTeacher_Click" class="btn btn-primary btn-block">
                    </div>
                </div>
            </div>
        </div>
    </div>

</asp:Content>
