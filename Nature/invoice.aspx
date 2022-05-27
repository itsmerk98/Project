<%@ Page Language="C#" AutoEventWireup="true" CodeFile="invoice.aspx.cs" Inherits="invoice" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Invoice</title>
    <link href="PageStyleFile/css/invoice.css" rel="stylesheet" />
    <link href="fontawesome-free-6.0.0-web/fontawesome-free-6.0.0-web/css/all.css" rel="stylesheet" />
</head>
<body>
    <section>
        <div class="content-sec">
            <div class="top-sec">
                <div class="ts-left">
                    <h1 class="b-name">TrayaGo Travel Agency</h1><br>
                    <p>Invoice To</p>
                    <h4>Client Name</h4>
                    <p>Client Address <br>
                    <br></p>
                </div>
                <div class="ts-right">
                    <h1 class="head-invoice">Invoice</h1>
                    <div class="align">
                        <div class="invoice-detail-type">
                            <p class="invoic-number"><b>Invoice# </b></p>
                            <p class="invoic-date"><b>Date: </b></p>
                        </div>
                        <div class="invoice-detail">
                            <p class="invoice-id"> 2345</p>
                            <p class="invoice-day">01/march/2022</p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="table-sec">
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
                        <td>Ram</td>
                        <td>05/03/2022</td>
                        <td>Simbirm Festival in Goa</td>
                        <td>20000</td>
                        <td></td>
                    </tr>
                    <tr>
                        <td>2</td>
                        <td>Kamal vaishnav</td>
                        <td>05/03/2022</td>
                        <td>Houseboat in Kashmir</td>
                        <td>10349</td>
                        <td></td>
                    </tr>
                    <tr>
                        <td>3</td>
                        <td>Gopal chouhan</td>
                        <td>05/03/2022</td>
                        <td>Jim Corbett</td>
                        <td>30349</td>
                        <td></td>
                    </tr>
                    <tr>
                        <td>4</td>
                        <td>Sanjay Rajpurohit</td>
                        <td>05/03/2022</td>
                        <td>Surfing in South India</td>
                        <td>10349</td>
                        <td></td>
                    </tr>
                    <tr>
                        <td>5</td>
                        <td>Pooja </td>
                        <td>05/03/2022</td>
                        <td>Tree house in Jibhi</td>
                        <td>10349</td>
                        <td></td>
                    </tr>
                    <tr>
                        <td>6</td>
                        <td>manish Gujar</td>
                        <td>05/03/2022</td>
                        <td>Dawki river</td>
                        <td>10349</td>
                        <td></td>
                    </tr>
                  </table>
            </div>
            <div class="middel-sec">
                <div class="pay-detail">
                    <p class="pay-info"><b>Payment Info : </b></p>
                    <div class="align">
                        <div class="pay-info-head">
                            <p>Account No : </p>
                            <p>A/C Holder : </p>
                            <p>Bank detail : </p>
                        </div>
                        <div class="pay-info-head text-align">
                            <p>098765432112 </p>
                            <p>Ram</p>
                            <p>Any bank detail</p>
                        </div>
                    </div>
                </div>
                <div class="calculate-amount">
                    <div class="align align-right">
                        <div class="pay-info-head">
                            <p>Sub total : </p>
                            <p>Tax : </p>
                            <p>Discount : </p>
                            <p class="total">Total</p>
                        </div>
                        <div class="pay-info-head">
                            <p><i class="fa-solid fa-indian-rupee-sign"></i>&nbsp;00000 </p>
                            <p>0.00%</p>
                            <p>5%</p>
                            <p class="total"><i class="fa-solid fa-indian-rupee-sign"></i>&nbsp;000000</p>
                        </div>
                    </div>
                    
                </div>
            </div>
            <div class="bottom-sec">
                <div class="term">
                    <p><b>Term & condation : </b></p>
                    <p class="term-p">Lorem ipsum dolor sit amet consectetur adipisicing elit. Laboriosam, nobis. Laborum, id. Natus corporis ea reiciendis sit illum quibusdam similique</p>
                </div>
                <!-- <div class="sign">
                    <div class="align text-align-right">
                        <p class="border-bottom"><b>Athorised-sign</b></p>
                    </div>
                </div> -->
            </div>

            <div class="thank-sec">
                <p><i class="fa-solid fa-heart"></i></p>
                <p><b>Thank you!</b> </p>
                <div class="sign">
                    <div class="align text-align-right">
                        <p class="border-bottom"><b>Athorised-sign</b></p>
                    </div>
                </div>
            </div>
        </div>
        <div class="taskbar">
            <div class="contect-us">
                <span><p><b>contect-us : </b></p></span>
                <span>trayagotravelagency@gmail.com</span>
                <span>+91 9876576543</span>
                <span>www.trayago.com</span>
            </div>
        </div>
    </section>
</body>
</html>
