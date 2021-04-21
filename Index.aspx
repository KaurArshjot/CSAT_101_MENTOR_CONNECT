<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="Mentor_Connect.Index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!doctype html>

<style>
	body{background-color: white;
			background-size: cover;
			min-height: 100%;
			padding-left:2%;
			background-image: url("main.jpg");
	}

	.main{ height: 92px;
		   width:100%;
		}
	.Logo
	   {font-family: Rockwell;
		color:black;
		float:left;
		margin-left:0%;
		width:30%;
		height:30%;
		padding-left:3%;
		border-style:solid;
		border-top-style:none;
		border-width:5px;
		border-color:black;
		}	
	
	.B
	   {font-family:Times new roman;
		color:black;
		float:left;
		width:45%;
		margin-top:15px;
		margin-left:7%;
		}
	td:hover{
			background-color:teal;
				color:white;}
	a{text-decoration:none;
		color:inherit;}


	.parent{ height: 430px;

	}
	.b1{
		width:100%;
		margin-left:10%;
		color:black;
		height:500px;
		font-family:Verdana;
		font-size:20px;
		padding:20px;
		}
	
	.logoo {	
		width:100%;
		background-color:teal;
		color:aliceblue;
		font-size:25px;
		height:40px;
		padding:1px;
		}

	
	hr{
		margin-top:20px;
        height: 2px;
        color: #1A8E8A;
		width:100%;
		
    }

	
    .auto-style1 {
		color: black;
		margin-top:2%;
        border-style:solid;
		border-width:5px;
		border-color:black;
        font-family: Verdana;
        font-size: 20px;
    }

	
    </style>

<!--<body >
	
    
	<div class="auto-style4">
	    
	   <div class="Logo"><asp:Image ID="Image1" runat="server" Height="89px" Width="114px" ImageUrl="~/images/logo.png" /><br /></a>
		</div>
	   <div class="auto-style3">	 =
		<table cellpadding="15">
		  <tr>
		    <td> <a href="index.html"> HOME </a> </td>
		    <td> <a href="ABOUT.html">ABOUT </a> </td> 
		    <td> <a href="SERVICES.html">SERVICES </a> </td> 
		    <td> <a href="Location.html">LOCATION </a> </td> 
		    <td> <a href="contact.html">CONTACT </a> </td>
		  </tr>
		</table>
	   </div>
	</div>
	<hr class="auto-style2" noshade="noshade" />

	
     <br>
     <div class="parent">

	<div align="center" class="auto-style1"> 
		<h1 style="color:teal;font-family:Stencil; font-size:60px;">Mentor Connect</h1>
		<h2>Website Design & Development Services.</h2>
		<p style="color:red">We at Mentor Connect love challenges and we have a great passion to help our clients achieve their online goals. Let us do what we do best and we will take care of your online needs from design to development and branding.</p>
		
	</div>
	
	<div align="center" class="auto-style11">
	<h6 class="auto-style10"> &#x40; copyright of Mentor Connect</h6>
	</div>





</body>
</html>-->
	<div align="center" class="auto-style1"> 
		<h1 style="color:teal;font-family:Stencil; font-size:60px;">Mentor Connect</h1>

		<h2 align="left">Your gateway to meeting the best in the biz.</h2>
			
	</div>
		
	    
	   <div class="Logo"><asp:Image ID="Image2" runat="server" Height="123px" Width="155px" ImageUrl="~/images/logo.png" /><br /></a>
		<br />
		<br />

		<asp:Button ID="Account" runat="server" Text="Account"  Height="43px" Width="123px" BackColor="Teal" BorderColor="#CCFFFF" BorderStyle="Groove" Font-Bold="True" Font-Names="Verdana" Font-Size="Large" ForeColor="#CCFFFF" style="margin-left: 0px"/>
		<br />		<br />
		

		<asp:Button ID="LogOut" runat="server" Text="Log Out"  Height="43px" Width="123px" BackColor="Teal" BorderColor="#CCFFFF" BorderStyle="Groove" Font-Bold="True" Font-Names="Verdana" Font-Size="Large" ForeColor="#CCFFFF" style="margin-left: 0px" OnClick="LogOut_Click"/><br />

	   </div>
		

	</asp:Content>

