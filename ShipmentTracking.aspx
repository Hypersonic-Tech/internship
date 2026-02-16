<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ShipmentTracking.aspx.cs" Inherits="SSL.ShipmentTracking" %>
<%@ Register Src="~/UC/Element.ascx" TagName="JQElement" TagPrefix="uc3" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="AjaxToolkit" %>
<!DOCTYPE html>
<html lang="en-US">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href='https://fonts.googleapis.com/css?family=Open+Sans:400,700,800' rel='stylesheet' type='text/css'>
    <title>Track Your Shipment</title>
    <link rel="shortcut icon" href="favicon.png" type="image/png">
    <link href="css/custome.css" rel="stylesheet" type="text/css">
    <link href="css/SSL.css" rel="stylesheet" type="text/css">
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <style>
        @charset "utf-8";
        /* CSS Document */
        html, body {
            margin: 0;
            padding: 0;
            font: normal 12px Tahoma, Arial, Helvetica, sans-serif;
            background: #fff;
            color: #666;
        }

        * {
            margin: 0px;
            padding: 0px;
        }

        a {
            color: #ffffff;
            text-decoration: none;
        }

            a:hover {
                color: #ffffff;
            }

        .contrast {
            opacity: 0.2;
            filter: alpha(opacity=20);
        }
        /*Booked*/
        .brightness {
            opacity: 0.5;
            filter: alpha(opacity=50);
            cursor: pointer;
        }
        /*Ready for Booking*/
        .clear {
            clear: both;
        }

        .etname {
            background: #FFF;
            font-size: 18px;
            font-family: 'Open Sans Condensed',sans-serif;
            color: #D81B22;
            font-weight: 700;
            text-align: left;
            padding-left: 10px;
            padding-top: 4px;
            padding-bottom: 5px;
        }

            .etname .label {
                color: #D81B22;
            }

            .etname .etnamespan {
                color: #000;
                font-size: 14px !important;
                line-height: 25px;
            }

        .hdname {
            border-bottom: 1px solid #ccc;
            padding-bottom: 10px;
            margin-bottom: 15px;
            background: #FFF;
        }

        .table-responsive {
            width: 100%;
            margin-bottom: 15px;
            overflow-y: hidden;
            overflow-x: scroll;
            border: 1px solid #000;
        }

        .table-bordered th,
        .table-bordered td {
            border: 1px solid #000;
        }

        .table thead > tr > th {
            vertical-align: bottom;
            border-bottom: 2px solid #000;
        }

        .table-bordered > thead > tr > th, .table-bordered > thead > tr > td, .table-bordered > tbody > tr > th, .table-bordered > tbody > tr > td, .table-bordered > tfoot > tr > th, .table-bordered > tfoot > tr > td {
            border: 1px solid #000;
        }

        .popupbox {
            /*border:4px solid black;*/
            border: 2px solid #1E96CA;
            display: none; /* Hidden as default */
            float: left;
            position: fixed;
            top: 38%;
            left: 50%;
            z-index: 999999;
            -webkit-box-shadow: 0px 0px 20px #000;
            -moz-box-shadow: 0px 0px 20px #000;
            box-shadow: 0px 0px 20px #000;
            top: 270px;
        }
    </style>
</head>
<body>
    <header class="fancy-header scrollup">
        <div class="logo-menu-sec">
            <div class="logo-menu">
                <a class="navbar-brand" title="SSLW LOGISTICS AND WAREHOUSING" href="http://www.sslw.co.in">SSLW LOGISTICS AND WAREHOUSING</a>
                <a href="http://www.sslw.co.in/" title="SSLW LOGISTICS AND WAREHOUSING" class="hidden-xs text-right btn-link popup2">Contact Us</a>
            </div>
        </div>
    </header>
    <div class="clearfix"></div>
    <section class=" page-header">
        <h3>Track Your Shipment</h3>
    </section>
    <form id="Form1" runat="server" class='form form-horizontal' style='margin-bottom: 0;'>
        <asp:ScriptManager ID="scrptMgr" runat="server" />
        <div class="container">
            <div class="row">
                <div class="col-sm-4">
                    <asp:TextBox ID="txtAwbNo" Height="80px" placeholder='Enter Tracking No' Columns="20" Rows="2" TextMode="MultiLine" runat="server" CssClass="form-control" TabIndex="1" />
                </div>
                <div class="col-sm-8">
                    <button id="btnSearch" class="btn btn-primary" type="button" alt="Track" title="Track"><i class=" fa fa-search"></i>Track</button>
                </div>
            </div>
        </div>
        <section>
            <div class="container" style="color: black;">
                <asp:Label ID="lblgrdDetails" runat="server" />
            </div>
        </section>
        <div class="popupbox" id="popuprel">
            <div class="etname">
                <button id="close" class="btn btn-danger btn-xs" style="margin: 3px 3px; height: 22px; width: 20px; margin-left: -5px; margin-top: 0px;" value="Mini" type="button">
                    X
                <i class="bg-danger"></i>
                </button>
                <b>
                    <asp:Label ID="lblHeading" runat="server" Text="Tracking Details" /></b>
            </div>
            <iframe width="600" height="500" id="ifPopup"></iframe>
        </div>
    </form>
    <script src="Script/jquery-1.3.2.js"></script>
    <script src="Script/Tracking.js"></script>
</body>
</html>
