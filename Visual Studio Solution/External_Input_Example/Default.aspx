<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="External_Input_Example.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">

        body {
            height: 100%;
            width: 100%; 
        } 

        form {
            width: 98%;  
            padding-left: 1%;   
            font: 22px Century Gothic,CenturyGothic,AppleGothic,sans-serif;                            
            text-transform: uppercase;          
        }  

        .user_entry_div {                               
            text-align: center; 
            border-radius: 15px 15px 0px 0px;
            border: 2px solid #D9DEDF;                                
        }

        .user_group {           
            display: inline-block; 
            width: 49%;
            padding: 0% 0% 0% 1%;        
        }

        .user_group:last-child {
            width: 47.5%;
            padding-right: 1%;  
        }

        .user_field{
            padding-bottom: 1%;
        }

        .pr_entry_div {                               
            text-align: left; 
            border-right: 2px solid #D9DEDF;   
            border-left: 2px solid #D9DEDF;                             
        }

        .pr_group {           
            display: inline-block; 
            width: 98%; 
            padding: 0% 1% 0% 1%;       
        }



        .pr_field{
            padding-bottom: 1%;
        }

        #PRDesc {
            height: 100px;
        }

        #PRStepsRepeat {
            height: 100px;
        }

        .submit {
            width: 100%;
            padding-top: 7.5px;
            padding-bottom: 7.5px;
            border-radius: 0px 0px 15px 15px;
            border: 2px solid #D9DEDF; 
            text-transform: uppercase;    
            font: 36px Century Gothic,CenturyGothic,AppleGothic,sans-serif;                   
        }
                
        input[type="text"],
        input[type="password"],
        textarea,
        select {
            background: rgba(255, 255, 255, .1);
            border: none;
            border-radius: 4px;
            margin: 0;
            padding: 7px;
            outline: 0;            
            width: 100%;
            box-sizing: border-box;
            -webkit-box-sizing: border-box;
            -moz-box-sizing: border-box;
            background-color: #e8eeef;
            color: #8a97a0;
            -webkit-box-shadow: 0 1px 0 rgba(0, 0, 0, 0.03) inset;
            box-shadow: 0 1px 0 rgba(0, 0, 0, 0.03) inset;
            border: 1px solid #D9DEDF;
            color: #000;
            font: 12px Century Gothic,CenturyGothic,AppleGothic,sans-serif; 
        }

        input[type="submit"] {            
            color: #FFF;            
            background: #D9DEDF;
            text-align: center;
            font-style: normal;
        }

        input[type="text"]:focus,
        input[type="password"]:focus,
        textarea:focus,
        select:focus {
            background: #d2d9dd;
        }

        input[type="submit"]:hover {
            background: #3668b1;
            border-color: #3668b1;
            cursor: pointer;
        }

    </style>
</head>
    <body>
        <form id="form" runat="server">  
             
                       
            <div id="user_entry_div" class="user_entry_div">
                <div class="user_group">
                    <div class="user_field">
                        <asp:Label ID="url_label" runat="server" Text="URL" ></asp:Label>
                        <asp:TextBox ID="url_text" runat="server"></asp:TextBox>
                    </div>
                    <div class="user_field">
                        <asp:Label ID="db_label" runat="server" Text="Database"></asp:Label>
                        <asp:TextBox ID="db_text" runat="server"></asp:TextBox>
                    </div>
                </div>
                <div class="user_group">
                    <div class="user_field">
                        <asp:Label ID="user_label" runat="server" Text="Username"></asp:Label>
                        <asp:TextBox ID="user_text" runat="server"></asp:TextBox>
                    </div>
                    <div class="user_field">
                        <asp:Label ID="password_label" runat="server" Text="Password"></asp:Label>
                        <asp:TextBox ID="password_text" runat="server" Textmode="Password"></asp:TextBox>
                    </div>
                </div>                                                                                               
            </div>  

            <div id="pr_entry_div" class="pr_entry_div">
                <div class="pr_group">
                    <div class="pr_field">
                        <asp:Label ID="LabelTitle" runat="server" Text="PR Title:"></asp:Label>
                        <asp:TextBox ID="PRTitle" runat="server"></asp:TextBox>
                    </div>
                    <div class="pr_field">
                        <asp:Label ID="DescLabel" runat="server" Text="PR Description:" ></asp:Label>
                        <asp:TextBox ID="PRDesc" runat="server" TextMode="MultiLine"></asp:TextBox>
                    </div>
                    <div class="pr_field">
                        <asp:Label ID="LabelStep" runat="server" Text="PR Steps to Repeat:"></asp:Label>
                        <asp:TextBox ID="PRStepsRepeat" runat="server" TextMode="MultiLine"></asp:TextBox>
                    </div>
                </div>
            </div>
                
            <div>
                <asp:Button ID="submit_button" cssClass="submit" runat="server" OnClick="Submit_Click" Text="Submit Problem Report"/>
            </div>
    
        </form>
    </body>
</html>
