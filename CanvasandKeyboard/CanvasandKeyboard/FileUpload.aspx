<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="FileUpload.aspx.cs" Inherits="CanvasandKeyboard.FileUpload" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <%--Firebase Reference Starts Here--%>
    <script src="https://www.gstatic.com/firebasejs/4.5.1/firebase.js"></script>
    <script src="https://cdn.firebase.com/js/client/2.2.3/firebase.js"></script>
   <script>
       // Initialize Firebase
       var config = {
           apiKey: "AIzaSyB_uXL-xiSWoSrquxNCKeDHexPNjqIBN-o",
           authDomain: "webfinal-1e000.firebaseapp.com",
           databaseURL: "https://webfinal-1e000.firebaseio.com",
           projectId: "webfinal-1e000",
           storageBucket: "webfinal-1e000.appspot.com",
           messagingSenderId: "735158014277"
       };
       firebase.initializeApp(config);
   </script>

    <script>
       // Get elements
       var uploader = document.getElementById('uploader');
       var fileButton = document.getElementById('fileButton');
       var previewButton = document.getElementById('previewButton');

       // Listen for file selection
       previewButton.addEventListener('click', function (e) {
           // Get File
           var file = fileButton.files[0];

           var storageRef = firebase.storage().ref('Images/' + file.name);

           //var task = storageRef.put(file);
           submitPhotos(fileButton.files);
       });

    </script>

    <script src="Scripts/FileUploadScripts.js"></script>
    <img src="Images/C&K%20logo.png" id="imgPreview" height="500" width="500"/>
    <input type="file" value="upload" id="fileButton" onchange="previewFile()"/>
     <button class="btn btn-primary"  id="previewButton" >Upload</button>
    <progress value="0" max="100" id="uploader">0%</progress>


  

</asp:Content>
