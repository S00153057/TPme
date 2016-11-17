<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="Tpme.home" %>

    
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server"> 

         

    <div class="Content">
        <a class="iconschange" href="#">
          <span class="glyphicon glyphicon-heart"></span>
        </a>
        <h1 id="welcome">Welcome</h1>
        
        <p class="para">Search for the game you wish to play and you'll be connected to another person!</p>
        <div class="row">
            <div class="col-sm-2">
            
            </div>
            <div class="col-sm-8">
                <input type="text" id="gamename" />
                <button id="searchGame" onclick="start()">Go</button>
            </div>
            <div class="col-sm-2">
                
            </div>
       </div>
    </div>

    <div class="Content">
             <div id="topgames" class="row">
            <p class="para">
                Top 3 games that people look to find a budy for!
            </p>
            <div class="col-sm-4">
                1
            </div>
             <div class="col-sm-4">
                1
            </div>
             <div class="col-sm-4">
                1
            </div>
        </div>
        </div>
      
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

    <script>

   $(document).ready(function () {
      

  

   });
   $(document).ready(function() {
       $("#gamename").autocomplete({
           source: function (request, response) {
               $.ajax({
                   url: "https://igdbcom-internet-game-database-v1.p.mashape.com/games/?fields=name&limit=10&offset=0&order=release_dates.date%3Adesc&search=" + $("#gamename").val(), // The URL to the API. You can get this in the API page of the API you intend to consume
                   type: 'GET', // The HTTP Method, can be GET POST PUT DELETE etc
                   data: {}, // Additional parameters here
                   dataType: 'json',
                   success: function (data) {
                       
                       var arr = [];
                       for (var i = 0; i < data.length; i++) {
                           arr.push(data[i]["name"]);
                       }
                       response(arr);
                   },
                   error: function (err) { alert(err); },
                   beforeSend: function (xhr) {
                       xhr.setRequestHeader("X-Mashape-Authorization", "Nx7kheuOfnmshrtNvAGm7jhvt2Fpp1oqG9Sjsn2pJceQqWadcG"); // Enter here your Mashape key
                   }
               });
           },
           minLength: 2,
           select: function (event, ui) {
               log("Selected: " + ui.item.value + " aka " + ui.item.id);
           }
       });
   });
 

    </script>
</asp:Content>
