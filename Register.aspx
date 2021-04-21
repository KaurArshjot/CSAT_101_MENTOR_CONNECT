<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Mentor_Connect.Register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        .container {
        font-family: Arial, Helvetica, sans-serif;
        background-color: white;
        width: 100%;
            height: 584px;
        }
     .div2 {
        width: 100%;
        background-color: teal;
        color: aliceblue;
        padding: 5px;
        text-align:center;
        height:25px;
        font-size:30px;
        font-family: verdana;
        height:70px
    }
     .main {
        margin-top: 3%;
        width: 100%;
        font-family: verdana;
        margin-left:80px;

        
    }
     #SignUp{
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
        .col-md-4 {
            height: 41px;
        }
         #msg{
            color:red;
        }
         .control-label{
             height="20px";
                 width="60px";
         }
         .tab{
            width:650px;
            height: 336px;
            text-align:left;
            font-family: verdana;
           }
         .tab>td{
             vertical-align:top;
             font-weight:bolder;
         }
        .auto-style1 {
            width: 186px;
        }
        .auto-style2 {
            margin-left: 0px;
        }
        .auto-style3 {
            width: 186px;
            height: 64px;
        }
        .auto-style4 {
            height: 64px;
        }
        #TypeOfMentor{
            height:auto;
        }
        .auto-style5 {
            width: 186px;
            height: 54px;
        }
        .auto-style6 {
            height: 54px;
        }
        .auto-style7 {
            width: 69%;
            margin-top: 25px;
            margin-left: 5px;
        }
        label{
            font-weight:bolder;
        }
    </style>
    <div class="container"> 
        <div class="div2">
    <h3 style="font-size:x-large;" >Register Here !</h3>
    </div>
        <div align="center" class="main">
    <table class="tab">
      <tr>    
    <td class="auto-style3"><label class="control-label col-md-4" >First Name</label></td>
    <td class="auto-style4"><asp:TextBox ID="FirstName" runat="server" Width="300px" Height="26px"></asp:TextBox>
        <br />
    
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="FirstName" ErrorMessage="Enter First Name" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
        <br />
          </td>
    </tr> 

    <tr>
           
    <td class="auto-style1"><label class="control-label col-md-4">Last Name</label></td>
        <td><asp:TextBox ID="LastName" runat="server" Width="300px" Height="26px"></asp:TextBox>
            <br />
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="LastName" ErrorMessage="Enter Last Name" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
        </td>
    </tr>
    
   <tr>
           
      <td class="auto-style1">      <label class="control-label col-md-4">Email Id </label> </td>
       <td><asp:TextBox ID="email" runat="server" TextMode="Email" Width="300px" Height="26px"></asp:TextBox>
           <br />
    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="Email" ErrorMessage="Enter Email Id" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
           <br />
       </td>
    </tr>

    <tr>
           
    <td class="auto-style1"><label class="control-label col-md-4">Password </label> </td>
<td> <asp:TextBox ID="Password" runat="server" TextMode="Password" OnTextChanged="Password_TextChanged" style="margin-left: 0px" Width="300px" Height="26px"></asp:TextBox>
    <br />
    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="Password" ErrorMessage="Enter Password" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
    <br />
        </td>
    </tr>

        <tr>
            <td class="auto-style1"><label class="control-label col-md-4">Confirm Password</label></td>
            <td><asp:TextBox ID="ConfirmPassword" runat="server" TextMode="Password" Width="300px" Height="26px"></asp:TextBox>
                <br />
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="Password" ControlToValidate="ConfirmPassword" Display="Dynamic" ErrorMessage="Enter same Password" ForeColor="Red"></asp:CompareValidator>                <br />
            </td>
        </tr>
    
    <tr>
          <td class="auto-style1">  <label class="control-label col-md-4"> Date Of Birth</label> </td>
        <td><asp:TextBox ID="DateOfBirth" runat="server" TextMode="Date" Width="300px" Height="26px"></asp:TextBox>
            <br />
          </td>

    </tr>

   <tr>
          <td class="auto-style1"> 
              <label class="control-label col-md-4">Gender</label></td>
       <td align="left"><asp:RadioButtonList ID="Gender" runat="server" RepeatDirection="Horizontal" OnSelectedIndexChanged="Gender_SelectedIndexChanged" CssClass="auto-style2" Height="37px" Width="302px">
          <asp:ListItem >Female</asp:ListItem>
          <asp:ListItem>Male</asp:ListItem>
           <asp:ListItem Value="Others">Others</asp:ListItem>
     </asp:RadioButtonList>
          </td>
       </tr>


<tr>
   <td class="auto-style5"> 
       <label class="control-label col-md-4">Type&nbsp;Of Mentor&nbsp;&nbsp;</label></td>
<td class="auto-style6"><asp:DropDownList ID="TypeOfMentor" runat="server" Height="83px" style="margin-left: 0px" Width="301px">
        <asp:ListItem>Choose an option</asp:ListItem>
        <asp:ListItem>Industry</asp:ListItem>
        <asp:ListItem>Ad-Hoc Mentor</asp:ListItem>
        <asp:ListItem>Customer Experience</asp:ListItem>
        <asp:ListItem>Career Development</asp:ListItem>
        <asp:ListItem>Tech Mentor</asp:ListItem>
        <asp:ListItem>Work Life Integration</asp:ListItem>
        <asp:ListItem>Profession Trade Mentor</asp:ListItem>
        <asp:ListItem>Work Process Mentor</asp:ListItem>
        <asp:ListItem>Peer Mentor</asp:ListItem>
        <asp:ListItem>Organizational Analyst</asp:ListItem>
    </asp:DropDownList>
    </td>

</tr>

</table>
        <div align="center" class="auto-style7" >
   
    <asp:Button ID="SignUp" runat="server" Text="Sign Up" OnClick="SignUp_Click" Height="43px" Width="123px" BackColor="Teal" BorderColor="#CCFFFF" BorderStyle="Groove" Font-Bold="True" Font-Names="Verdana" Font-Size="Large" ForeColor="#CCFFFF" style="margin-left: 0px"/><br />
                
    <asp:Label ID="msg" runat="server" Font-Names="Verdana" Font-Size="20pt" ForeColor="Red"></asp:Label>
       
            </div>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ClientsConnectionString %>" DeleteCommand="DELETE FROM [Users] WHERE [email] = @original_email" InsertCommand="INSERT INTO [Users] ([first_name], [last_name], [email], [gender], [type_of_mentor], [date_of_birth], [password]) VALUES (@first_name, @last_name, @email, @gender, @type_of_mentor, @date_of_birth, @password)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Users]" UpdateCommand="UPDATE [Users] SET [first_name] = @first_name, [last_name] = @last_name, [gender] = @gender, [type_of_mentor] = @type_of_mentor, [date_of_birth] = @date_of_birth, [password] = @password WHERE [email] = @original_email">
        <DeleteParameters>
            <asp:Parameter Name="original_email" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:ControlParameter ControlID="FirstName" Name="first_name" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="LastName" Name="last_name" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="email" Name="email" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="Gender" Name="gender" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="TypeOfMentor" Name="type_of_mentor" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="Password" Name="password" PropertyName="Text" Type="String" />
            
            <asp:ControlParameter ControlID="DateOfBirth" DbType="Date" Name="date_of_birth" />

        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="first_name" Type="String" />
            <asp:Parameter Name="last_name" Type="String" />
            <asp:Parameter Name="gender" Type="String" />
            <asp:Parameter Name="type_of_mentor" Type="String" />
            <asp:Parameter DbType="Date" Name="date_of_birth" />
            <asp:Parameter Name="password" Type="String" />
            <asp:Parameter Name="original_email" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>

</div>
</asp:Content>
