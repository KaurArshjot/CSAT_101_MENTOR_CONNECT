<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Mentor_Connect.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <style>
        .img{
            margin-left: 50px;
        }
         h2{
            color:black;
            font-family: verdana;
            font-size: 160%;
            text-align:center;
        }
        h1{
            color:teal;
            text-align:center;
            font-family: Stencil;
            font-size:300%;
        }
        label{
            height:5px;
            width:15px;
            font-size:larger;
             font-family: verdana;
             text-align:right;
        }

        #LoginButton, #SignUpButton{
        
         padding: 5px 5px;
        text-align: center;
        cursor: pointer;
        color: aliceblue;
        background-color: teal;
        display: inline-block;
        text-decoration: none;
        outline: none;
        border: none;
        border-radius: 5px;
        font-size: 18px;

     }
   
     .button{
         width:20%;
         margin-top:25px;
         margin-left:5px
         
     }

     #email, #password :hover{
         border-color:teal;
     }
    
        }
        .class1, .class2{
            margin-top:20px;
            width:100%;
        }
        #msg{
            color:red;
            margin-top:20px;
        }
        .auto-style1 {
            margin-top: 20px;
            width: 100%;
            height: 118px;
        }
        label{
            font-weight:bolder
        }
        .tab{
            text-align:left;
            font-family: verdana;
            padding:px;
           }
        }
    </style>
    <div align="center" class="img">
    <asp:Image ID="Image1" runat="server" Height="177px" Width="216px" ImageUrl="~/images/logo.png" ImageAlign="AbsMiddle" /><br />
     <h1>Mentor Connect</h1>
    <h2> Your Gateway To Meeting The Best in The Biz</h2>
        </div>
    <div align="center">
        <div class="auto-style1">
            <table>
   <tr> 
       <td><Label> Username&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </Label> &nbsp;</td>
   <td> <asp:TextBox ID="email" runat="server" TextMode="Email" Width="340px" Height="40px"></asp:TextBox> 
       <br />
       <br />
       </td>
       </tr>
                <tr>
          <td> <Label>Password&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </Label>
                    </td> 
    <td><asp:TextBox ID="Password" runat="server" TextMode="Password" Width="340px" Height="40px"></asp:TextBox></td>
                    </tr>
                </table class="tab">
        </div>
        <div class="class2">
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="LoginButton" runat="server" Text="Sign In" OnClick="LoginButton_Click" BackColor="Teal" BorderColor="#FFFFCC" BorderStyle="Groove" Font-Bold="True" Font-Names="Arial" Font-Size="15pt" ForeColor="White" Height="60px" Width="130px" />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="SignUpButton" runat="server" Text="Sign Up" OnClick="SignUpButton_Click" BackColor="Teal" BorderColor="#FFFFCC" BorderStyle="Groove" Font-Bold="True" Font-Names="Arial" Font-Size="15pt" ForeColor="White" Height="60px" Width="130px" /><br />
    </div>
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="msg" runat="server" Font-Names="verdana" Font-Size="20px" ForeColor="Red"></asp:Label>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ClientsConnectionString %>" DeleteCommand="DELETE FROM [Users] WHERE [email] = @original_email AND (([first_name] = @original_first_name) OR ([first_name] IS NULL AND @original_first_name IS NULL)) AND (([last_name] = @original_last_name) OR ([last_name] IS NULL AND @original_last_name IS NULL)) AND (([gender] = @original_gender) OR ([gender] IS NULL AND @original_gender IS NULL)) AND (([type_of_mentor] = @original_type_of_mentor) OR ([type_of_mentor] IS NULL AND @original_type_of_mentor IS NULL)) AND (([date_of_birth] = @original_date_of_birth) OR ([date_of_birth] IS NULL AND @original_date_of_birth IS NULL)) AND (([password] = @original_password) OR ([password] IS NULL AND @original_password IS NULL))" InsertCommand="INSERT INTO [Users] ([first_name], [last_name], [email], [gender], [type_of_mentor], [date_of_birth], [password]) VALUES (@first_name, @last_name, @email, @gender, @type_of_mentor, @date_of_birth, @password)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Users]" UpdateCommand="UPDATE [Users] SET [first_name] = @first_name, [last_name] = @last_name, [gender] = @gender, [type_of_mentor] = @type_of_mentor, [date_of_birth] = @date_of_birth, [password] = @password WHERE [email] = @original_email AND (([first_name] = @original_first_name) OR ([first_name] IS NULL AND @original_first_name IS NULL)) AND (([last_name] = @original_last_name) OR ([last_name] IS NULL AND @original_last_name IS NULL)) AND (([gender] = @original_gender) OR ([gender] IS NULL AND @original_gender IS NULL)) AND (([type_of_mentor] = @original_type_of_mentor) OR ([type_of_mentor] IS NULL AND @original_type_of_mentor IS NULL)) AND (([date_of_birth] = @original_date_of_birth) OR ([date_of_birth] IS NULL AND @original_date_of_birth IS NULL)) AND (([password] = @original_password) OR ([password] IS NULL AND @original_password IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_email" Type="String" />
            <asp:Parameter Name="original_first_name" Type="String" />
            <asp:Parameter Name="original_last_name" Type="String" />
            <asp:Parameter Name="original_gender" Type="String" />
            <asp:Parameter Name="original_type_of_mentor" Type="String" />
            <asp:Parameter DbType="Date" Name="original_date_of_birth" />
            <asp:Parameter Name="original_password" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="first_name" Type="String" />
            <asp:Parameter Name="last_name" Type="String" />
            <asp:Parameter Name="email" Type="String" />
            <asp:Parameter Name="gender" Type="String" />
            <asp:Parameter Name="type_of_mentor" Type="String" />
            <asp:Parameter DbType="Date" Name="date_of_birth" />
            <asp:Parameter Name="password" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="first_name" Type="String" />
            <asp:Parameter Name="last_name" Type="String" />
            <asp:Parameter Name="gender" Type="String" />
            <asp:Parameter Name="type_of_mentor" Type="String" />
            <asp:Parameter DbType="Date" Name="date_of_birth" />
            <asp:Parameter Name="password" Type="String" />
            <asp:Parameter Name="original_email" Type="String" />
            <asp:Parameter Name="original_first_name" Type="String" />
            <asp:Parameter Name="original_last_name" Type="String" />
            <asp:Parameter Name="original_gender" Type="String" />
            <asp:Parameter Name="original_type_of_mentor" Type="String" />
            <asp:Parameter DbType="Date" Name="original_date_of_birth" />
            <asp:Parameter Name="original_password" Type="String" />
        </UpdateParameters>
      
</asp:SqlDataSource>
          </div>
</asp:Content>
