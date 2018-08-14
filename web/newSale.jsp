<%-- 
    Document   : newSale
    Created on : 13-ago-2018, 20:30:31
    Author     : alejo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register sale</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    </head>
    <body>
        <jsp:include page="menu.jsp"></jsp:include>
        <h1>Register sale</h1>
        <div class="container well">
            <form action="SaleServlet?action=insert" method="post">
                <table>
                    <tr>
                        <th>
                            <label><b>Identification bill:</b></label>
                        </th>
                        <th>
                            <input type="text" placeholder="Enter the identification bill" class="form-control" name="idBill" required=""/>
                        </th>
                    </tr>
                    <tr>
                        <th>
                            <label><b>Customer name:</b></label>
                        </th>
                        <th>
                            <input type="text" placeholder="Enter the customer name" class="form-control" name="clientName" required=""/>
                        </th>
                    </tr>
                    <tr>
                        <th>
                            <label><b>Customer identification:</b></label>
                        </th>
                        <th>
                            <input type="text" placeholder="Enter the customer identification" class="form-control" name="idClient" required=""/>
                        </th>
                    </tr>
                    <tr>
                        <th>
                            <label><b>Vehicle license plate:</b></label>
                        </th>
                        <th>
                            <input type="text" placeholder="Enter the vehicle license plate" class="form-control" name="licensePlate" required=""/>
                        </th>
                    </tr>
                    <tr>
                        <th>
                            <label><b>Payment:</b></label>
                        </th>
                        <th>
                            <input type="text" placeholder="Enter the payment" class="form-control" name="payment" required=""/>
                        </th>
                    </tr>
                    <div class="break"></div>
                    
                    <tr>
                        <td colspan="2">
                            <input class="btn icon-btn btn-success" type="submit" name="action" value="Insertar">
                            <span class="glyphicon glyphicon-ok-sign"/></span>
                            
                            <input class="btn btn-info btn-lg" type="reset" name="action" value="Reset">
                            <span class="glyphicon glyphicon-remove"></span>
                        </td>
                    </tr>
                </table>
            </form>
        </div>
    </body>
</html>
