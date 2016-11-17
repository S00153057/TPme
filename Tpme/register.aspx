<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="Tpme.WebForm1" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <form runat="server">
        <div class="form-horizontal">
            <h4>Create a new Account</h4>
            <div class="form-group">
                <div class="col-sm-6">
                    <asp:Label AssociatedControlID="userName" CssClass="col-md-2 control-label" runat="server">Username:</asp:Label>
                    <div class="col-md-8">
                        <asp:TextBox runat="server" ID="userName" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="col-md-2">
                        <asp:RequiredFieldValidator Display="Dynamic" runat="server" ControlToValidate="userName" CssClass="text-danger" Text="*" ErrorMessage="Username taken"></asp:RequiredFieldValidator>
                    </div>
                </div>
            </div>
            <div class="form-group">
                <div class="col-sm-6">
                    <asp:Label runat="server" AssociatedControlID="userEmail" CssClass="col-md-2 control-label">Email:</asp:Label>
                    <div class="col-md-8">
                        <asp:TextBox runat="server" ID="userEmail" TextMode="Email" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="col-md-2">
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="userEmail" CssClass="text-danger" Text="*" ErrorMessage="Invalid email address"></asp:RequiredFieldValidator>
                    </div>
                </div>
            </div>
            <div class="form-group">
                <div class="col-sm-6">
                    <asp:Label runat="server" AssociatedControlID="userPassword" CssClass="col-md-2 control-label">Password:</asp:Label>
                    <div class="col-md-8">
                        <asp:TextBox runat="server" ID="userPassword" TextMode="Password" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="col-md-2">
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="userPassword" CssClass="text-danger" Text="*" ErrorMessage="Invalid password"></asp:RequiredFieldValidator>
                    </div>
                </div>
            </div>
            <div class="form-group">
                <div class="col-sm-6">
                    <asp:Label runat="server" AssociatedControlID="confirmPassword" CssClass="col-md-2 control-label" >Confirm Password:</asp:Label>
                    <div class="col-md-8">
                        <asp:TextBox runat="server" ID="confirmPassword" TextMode="Password" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="col-md-2">
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="confirmPassword" Display="Dynamic" CssClass="text-danger" Text="*" ErrorMessage="Invalid password"></asp:RequiredFieldValidator>
                        <asp:CompareValidator runat="server" ControlToCompare="userPassword" ControlToValidate="confirmPassword" CssClass="text-danger" Display="Dynamic" Text="*" ErrorMessage="Password does not match"></asp:CompareValidator>
                    </div>
                </div>
            </div>
            <div class="form-group">
                <div class="col-md-offset-2 col-md-10">
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
                    <asp:Button OnClick="createUser_Click" runat="server" Text="Register"  />
                </div>
            </div>
        </div>
    </form>

</asp:Content>
