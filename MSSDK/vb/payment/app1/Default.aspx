<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="Payment_App1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html xml:lang="en" xmlns="http://www.w3.org/1999/xhtml" lang="en">
<head>
    <title>AT&T Sample Payment Application - Single Pay Application</title>
    <link rel="stylesheet" type="text/css" href="style/common.css" />
</head>
<body>
    <form id="form1" runat="server">
    <div id="container">
        <!-- open HEADER -->
        <div id="header">
            <div>
                <div class="hcRight">
                    <asp:Label runat="server" Text="Label" ID="serverTimeLabel"></asp:Label>
                </div>
                <div class="hcLeft">
                    Server Time:</div>
            </div>
            <div>
                <div class="hcRight">
                    <script language="JavaScript" type="text/javascript">
                        var myDate = new Date();
                        document.write(myDate);
                    </script>
                </div>
                <div class="hcLeft">
                    Client Time:</div>
            </div>
            <div>
                <div class="hcRight">
                    <script language="JavaScript" type="text/javascript">
                        document.write("" + navigator.userAgent);
                    </script>
                </div>
                <div class="hcLeft">
                    User Agent:</div>
            </div>
            <br clear="all" />
        </div>
        <!-- close HEADER -->
        <div class="wrapper">
            <div class="content">
                <h1>
                    AT&T Sample Payment Application - Single Pay Application</h1>
                <h2>
                    Feature 1: Create New Transaction</h2>
                <br />
            </div>
        </div>
        <div class="navigation">
            <table border="0" width="100%">
                <tbody>
                    <tr>
                        <asp:RadioButtonList ID="Radio_TransactionProductType" runat="server" RepeatDirection="Vertical"
                            Font-Names="Calibri" Font-Size="Small">
                            <asp:ListItem Selected="True">Buy product 1 for $0.99</asp:ListItem>
                            <asp:ListItem>Buy product 2 for $2.99</asp:ListItem>
                        </asp:RadioButtonList>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div class="extra">
            <table>
                <tbody>
                    <tr>
                        <td>
                            <br />
                            <br />
                            <asp:Button runat="server" Text="Buy Product" ID="newTransactionButton" OnClick="NewTransactionButton_Click" />
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <br clear="all" />
        <div align="center">
            <asp:Panel runat="server" ID="newTransactionPanel">
            </asp:Panel>
        </div>
        <div class="successWide" id="transactionSuccessTable" runat="server" visible="False">
            <strong>SUCCESS:</strong><br />
            <strong>Merchant Transaction ID:</strong>
            <asp:Label ID="lbltranid" runat="server" Text="" />
            <br />
            <strong>Transaction Auth Code:</strong>
            <asp:Label ID="lbltrancode" runat="server" Text="" />
            &nbsp;</div>
        <br clear="all" />
        <div class="wrapper">
            <div class="content">
                <h2>
                    <br />
                    Feature 2: Get Transaction Status</h2>
            </div>
        </div>
        <div class="navigation" align="center">
            <table border="0" width="100%">
                <tbody>
                    <tr>
                        <td class="cell" align="left">
                            <asp:RadioButtonList ID="Radio_TransactionStatus" runat="server" RepeatDirection="Vertical"
                                Font-Names="Calibri" Font-Size="Small">
                                <asp:ListItem ID="GetTransactionMerchantTransID" Selected="True">Merchant Transaction ID: </asp:ListItem>
                                <asp:ListItem ID="GetTransactionAuthCode">Auth Code: </asp:ListItem>
                                <asp:ListItem ID="GetTransactionTransID">Transaction ID: </asp:ListItem>
                            </asp:RadioButtonList>
                    </tr>
                </tbody>
            </table>
        </div>
        <div class="extra">
            <table>
                <tbody>
                    <tr>
                        <td>
                            <br />
                            <br />
                            <br />
                            <asp:Button runat="server" Text="Get Transaction Status" ID="getTransactionButton"
                                OnClick="GetTransactionButton_Click" />
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <br clear="all" />
        <div class="successWide" id="tranGetStatusTable" runat="server" visible="False">
            <strong>SUCCESS</strong></div>
        <div align="center">
            <asp:Panel runat="server" ID="newTransactionStatusPanel">
            </asp:Panel>
        </div>
        <br clear="all" />
        <div class="wrapper">
            <div class="content">
                <h2>
                    <br />
                    Feature 3: Refund Transaction</h2>
            </div>
        </div>
        <div class="navigation">
            <asp:Table ID="refundTable" runat="server" Width="750px" CellPadding="1" CellSpacing="1"
                border="0">
            </asp:Table>
        </div>
        <br clear="all" />
        <div class="extra">
            <asp:Button ID="Button1" runat="server" Text="Refund Transaction" OnClick="BtnRefundTransaction_Click1" />
        </div>
        <br clear="all" />
        <br clear="all" />
        <div class="successWide" id="refundSuccessTable" runat="server" visible="False">
            <strong>SUCCESS</strong><br />
        </div>
        <div align="center">
            <asp:Panel runat="server" ID="refundPanel">
            </asp:Panel>
        </div>
        <br clear="all" />
        <div class="wrapper">
            <div class="content">
                <h2>
                    <br />
                    Feature 4: Notifications</h2>
            </div>
        </div>
        <div class="navigation">
            <asp:Table ID="notificationTable" runat="server" Width="750px" CellPadding="1" CellSpacing="1"
                border="0">
            </asp:Table>
        </div>
        <br clear="all" />
        <div class="extra">
            <asp:Button ID="btnGetNotification" runat="server" OnClick="BtnGetNotification_Click"
                Text="Refresh" />
        </div>
        <br clear="all" />
        <br clear="all" />
        <div align="center">
            <asp:Panel runat="server" ID="notificationPanel">
            </asp:Panel>
        </div>
        <br />
        <br clear="all" />
        <div id="footer">
            <div style="float: right; width: 20%; font-size: 9px; text-align: right">
                Powered by AT&amp;T Cloud Architecture</div>
            <p>
                &#169; 2013 AT&amp;T Intellectual Property. All rights reserved. <a href="http://developer.att.com/"
                    target="_blank">http://developer.att.com</a>
                <br />
                The Application hosted on this site are working examples intended to be used for
                reference in creating products to consume AT&amp;T Services and not meant to be
                used as part of your product. The data in these pages is for test purposes only
                and intended only for use as a reference in how the services perform.
                <br />
                For download of tools and documentation, please go to <a href="http://developer.att.com/SDK"
                    target="_blank">https://developer.att.com/SDK</a> and <a href="http://developer.att.com/docs" 
                    target="_blank">https://developer.att.com/docs</a>
                <br />
                For more information contact <a href="mailto:developer.support@att.com">developer.support@att.com</a>
        </div>
    </form>
</body>
</html>

