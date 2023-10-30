<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="WebApplication1.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>User</title>
</head>
<body>
    <form id="form1" runat="server">
        <div id="TextBox2">
            <p id="TextBox1">
            Hello User
            Please Enter Name of user<br/>
                <asp:TextBox ID="TextBox1" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
               
                
            
            </P>
            <p></p>
            <p>&nbsp;<asp:Button runat="server" Text="Submit" OnClick="Unnamed2_Click"></asp:Button><asp:Label runat="server" ID="Label3"></asp:Label></p>
            <blocked-overlay><div class="blockedOverlayWrapper" style="position: absolute; top: 0px; left: 0px; width: 847px; height: 513px; pointer-events: none;"><blocked-overlay-rect height="296" width="847" top="217" left="0"><br class="Apple-interchange-newline"><div class="blockedOverlayRect" style="position: absolute; cursor: not-allowed; background-color: rgba(0, 0, 0, 0.3); pointer-events: auto; top: 217px; left: 0px; width: 847px; height: 296px;"></div></blocked-overlay-rect></div></blocked-overlay><selector-parent-decorator isvisible=""><div id="elementOutline" style="position: fixed; height: 49px; width: 841px; top: 11px; left: 3px; pointer-events: none; display: grid; grid-template-columns: 5px 1fr 5px; grid-template-rows: 5px 1fr 5px;"><div id="outer-top" style="background-image: linear-gradient(to right top, black 10%, white 10%, white 40%, black 40%, black 60%, white 60%, white 90%, black 90%); background-size: 5px 5px; cursor: move; pointer-events: all; grid-area: 1 / 1 / 2 / 3; color: rgb(0, 0, 0); font-family: &quot;Times New Roman&quot;; font-size: medium; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;"></div><div id="outer-left" style="background-image: linear-gradient(to right top, black 10%, white 10%, white 40%, black 40%, black 60%, white 60%, white 90%, black 90%); background-size: 5px 5px; cursor: move; pointer-events: all; grid-area: 2 / 1 / 4 / 2; color: rgb(0, 0, 0); font-family: &quot;Times New Roman&quot;; font-size: medium; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;"></div><div id="outer-right" style="background-image: linear-gradient(to right top, black 10%, white 10%, white 40%, black 40%, black 60%, white 60%, white 90%, black 90%); background-size: 5px 5px; cursor: move; pointer-events: all; grid-area: 1 / 3 / 3 / 4; color: rgb(0, 0, 0); font-family: &quot;Times New Roman&quot;; font-size: medium; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;"></div><br class="Apple-interchange-newline">
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <p>&nbsp;</p>
            <p>&nbsp;</p>
          
        </div>
        
    </form>
</body>
</html>
