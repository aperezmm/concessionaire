<%-- 
    Document   : newVehicle
    Created on : 13-ago-2018, 18:55:53
    Author     : alejo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register vehicle</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    </head>
    <body>
        <jsp:include page="menu.jsp"></jsp:include>
        <h1>Register vehicle</h1>
        <div>
            <form action="VehicleServlet?action=insert" method="post">
                <table>
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
                            <label><b>Vehicle brand:</b></label>
                        </th>
                        <th>
                            <input type="text" placeholder="Enter the vehicle brand" class="form-control" name="carBrand" required=""/>
                        </th>
                    </tr>
                    <tr>
                        <th>
                            <label><b>Vehicle model:</b></label>
                        </th>
                        <th>
                            <input type="text" placeholder="Enter the vehicle model" class="form-control" name="carModel" required=""/>
                        </th>
                    </tr>
                    <tr>
                        <th>
                            <label><b>Vehicle price:</b></label>
                        </th>
                        <th>
                            <input type="text" placeholder="Enter the vehicle price" class="form-control" name="price" required=""/>
                        </th>
                    </tr>
                    <tr>
                        <th>
                            <label><b>Vehicle photo:</b></label>
                        </th>
                        <th>
                            <input type="file" class="form-control" name="photo" required=""/>
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
