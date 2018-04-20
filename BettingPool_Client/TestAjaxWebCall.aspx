<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TestAjaxWebCall.aspx.cs" Inherits="BettingPool_Client.TestAjaxWebCall" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script type="text/javascript" src="https://code.jquery.com/jquery-3.3.1.js"></script>
</head>

<script type="text/javascript">
    var myData = "{status: 8, name: 'bubba2'}";
    var theirData;
    function TestAjax() {

        $.ajax({
            type: "POST",
            url: 'TestAjaxWebCall.aspx/testajax',
            data: myData,
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (jsonResult) {
                debugger;
                JSON.stringify(jsonResult);
                $("#divResult").html("Their data: " + JSON.stringify(jsonResult));
                theirData = JSON.parse(jsonResult.d);
            },
            error: function (e) {
                debugger;
                $("#divResult").html("Something Wrong.");
            }
        });
    }
    // A $( document ).ready() block.
    $(document).ready(function () {
        TestAjax();
    });
    
</script>

<body>
    <div id=divResult></div>
    <form id="form1" runat="server">
    <div>
    
    </div>
    </form>
</body>
</html>
