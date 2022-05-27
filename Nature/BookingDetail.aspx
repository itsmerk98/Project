<%@ Page Language="C#" AutoEventWireup="true" CodeFile="BookingDetail.aspx.cs" Inherits="BookingDetail" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="PageStyleFile/css/BookingDetails.css" rel="stylesheet" />
    <%--<link href="PageStyleFile/css/layout.css" rel="stylesheet" />--%>
    <%--<link href="PageStyleFile/css/style.css" rel="stylesheet" />--%>
    <title>Nature | BookingDetails </title>
</head>
<body>
    <form runat="server" class="center">
        <div class="table-sec">
            <h1>Booking details </h1>
            <table>
                <tr>
                    <th>SL.</th>
                    <th>Name</th>
                    <th>Date</th>
                    <th>place</th>
                    <th>Price</th>
                    <th>Total</th>
                </tr>
                <tr>
                    <td>1</td>
                    <td>
                        <div class="col-1-of-3">
                            <div class="card">
                                <div class="card-side card-side-front">
                                    <div class="card-picture card-picture-1">
                                        &nbsp;
                                    </div>
                                    <h4 class="card-heading">
                                        <span class="card-heading-span card-heading-span-1">The sea Explore</span>
                                    </h4>
                                    <div class="card-details">
                                        <ul>
                                            <li>3 day tours</li>
                                            <li>Up to 30 peoples</li>
                                            <li>2 tour guides</li>
                                            <li>Sleep in cozy hotels</li>
                                            <li>Difficulty: easy</li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </td>
                    <td>05/03/2022</td>
                    <td>Simbirm Festival in Goa</td>
                    <td>50349</td>
                    <td></td>
                </tr>
                <tr>
                    <td>2</td>
                    <td>
                        <div class="col-1-of-3">
                            <div class="card">
                                <div class="card-side card-side-front">
                                    <div class="card-picture card-picture-1">
                                        &nbsp;
                                    </div>
                                    <h4 class="card-heading">
                                        <span class="card-heading-span card-heading-span-1">The sea Explore</span>
                                    </h4>
                                    <div class="card-details">
                                        <ul>
                                            <li>3 day tours</li>
                                            <li>Up to 30 peoples</li>
                                            <li>2 tour guides</li>
                                            <li>Sleep in cozy hotels</li>
                                            <li>Difficulty: easy</li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </td>
                    <td>05/03/2022</td>
                    <td>Simbirm Festival in Goa</td>
                    <td>50349</td>
                    <td></td>
                </tr>
            </table>
        </div>

    </form>
</body>
</html>
