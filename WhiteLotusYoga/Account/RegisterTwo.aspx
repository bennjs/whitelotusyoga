<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="RegisterTwo.aspx.cs" Inherits="WhiteLotusYoga.Account.RegisterTwo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
        <div class="row centered-form">
            <div class="col-xs-12 col-sm-8 col-md-4 col-sm-offset-2 col-md-offset-4">
                <br />
                <br />
                <div class="panel panel-default">
                    <div class="panel-body">
                        <h2 class="text-center">We're almost there <%:Session["UserName"]%>!</h2>
                        <p class="text-center">We just need a few more details before you'll be able to book a session with us.</p>
                        <div class="form-group">
                            <label for="dobInput">Date of Birth:</label>
                            <input type="date" name="dobInput" id="dobInput" class="form-control input-sm">
                        </div>
                        <div class="form-group">
                            <label for="experienceInput">Yoga Experience:</label>
                            <select class="form-control input-sm" name="experienceInput" id="experienceInput">
                                <option>Beginner</option>
                                <option>Intermediate</option>
                                <option>Advanced</option>
                            </select>
                        </div>
                        <div class="form-group">
                            <label for="healthInput">Health Issues:</label>
                            <input type="text" name="healthInput" id="healthInput" class="form-control input-sm" placeholder="Please jot down any health issues here.">
                        </div>
                        <div class="form-group">
                            <label for="contactInput">Contact Number:</label>
                            <input type="text" name="contactInput" id="contactInput" class="form-control input-sm" placeholder="Please enter your primary contact number">
                        </div>
                        <p class="text-center">And finally have 140 characters on us to write a short bio about yourself!</p>
                        <div class="form-group">
                            <input type="text" maxlength="140" name="bioInput" id="bioInput" class="form-control input-sm" placeholder="Hi! I love filling in forms!">
                        </div>
                        <input type="submit" value="Complete Registration!" name="completeRegistration" runat="server" onserverclick="completeRegistration_Click" class="btn btn-primary btn-block">
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
