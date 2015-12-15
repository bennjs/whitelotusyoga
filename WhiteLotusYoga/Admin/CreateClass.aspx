<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CreateClass.aspx.cs" Inherits="WhiteLotusYoga.Admin.CreateClass" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-xs-12 col-sm-8 col-md-8 col-sm-offset-2 col-md-offset-2">
                <br />
                <br />
                <div class="panel panel-default">
                    <div class="panel-body">
                        <h2 class="text-center">Creating a New Class</h2>
                        <p class="text-center">To create a new Class, please fill in the form below.</p>
                        <div class="form-group">
                            <label for="className">Class Name</label>
                            <select class="form-control input-sm" name="className" id="className">
                                <option>Hot Yoga</option>
                                <option>Hatha</option>
                                <option>Vinyasa</option>
                                <option>Bikram</option>
                            </select>
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="shortDescription">Short Description</label>
                                    <input type="text" maxlength="140" name="shortDescription" id="shortDescription" class="form-control input-sm" placeholder="(140 Characters Max)">
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="classLevel">Class Name</label>
                                    <select class="form-control input-sm" name="classLevel" id="classLevel">
                                        <option>Beginner</option>
                                        <option>Intermediate</option>
                                        <option>Advanced</option>
                                    </select>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="capacityInput">Capacity (Min 6, Max 20):</label>
                            <input type="number" min="6" max="20" value="15" name="capacityInput" id="capacityInput" class="form-control input-sm">
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="startTime">Start:</label>
                                    <input type="datetime-local" name="startTime" id="startTime" class="form-control input-sm">
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="endTime">End:</label>
                                    <input type="datetime-local" name="endTime" id="endTime" class="form-control input-sm">
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="repeaterInput">Repeat Event?</label>
                            <select class="form-control input-sm" name="repeaterInput" id="repeaterInput" runat="server">
                                <option value="0">Don't Repeat</option>
                                <option value="2">Repeat for 2 Weeks</option>
                                <option value="3">Repeat for 3 Weeks</option>
                                <option value="4">Repeat for 4 Weeks</option>
                                <option value="5">Repeat for 5 Weeks</option>
                                <option value="6">Repeat for 6 Weeks</option>
                            </select>
                        </div>
                        <div class="form-group">
                            <label for="studioInput">Studio</label>
                            <select class="form-control input-sm" name="studioInput" id="studioInput">
                                <option>Serene Forest</option>
                                <option>Peaceful Meadows</option>
                                <option>Bright Garden</option>
                            </select>
                        </div>
                        <div class="form-group">
                            <label for="teacherSelect">Teacher</label>
                            <select class="form-control input-sm" name="teacherSelect" id="teacherSelect">
                                <option value="1">John</option>
                                <option value="2">Alice</option>
                                <option value="3">Timothy</option>
                                <option value="4">Mary</option>
                            </select>
                        </div>
                        <input type="submit" value="Create Class!" name="createClass" runat="server" onserverclick="createClass_Click" class="btn btn-primary btn-block">
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
