<%-- 
    Document   : newCustomer
    Created on : 13-ago-2018, 18:40:23
    Author     : alejo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register customer</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    </head>
    <body>
        <jsp:include page="menu.jsp"></jsp:include>
        <h1>Register customer</h1>
        <div class="container well">
            <form action="CustomerServlet?action=insert" method="post">
                <table>
                    <tr>
                        <th>
                            <label><b>Identification:</b></label>
                        </th>
                        <th>
                            <input type="text" placeholder="Enter the customer identification" class="form-control" name="id" required=""/>
                        </th>
                    </tr>
                    <tr>
                        <th>
                            <label><b>Username:</b></label>
                        </th>
                        <th>
                            <input type="text" placeholder="Enter the customer username" class="form-control" name="username" required=""/>
                        </th>
                    </tr>
                    <tr>
                        <th>
                            <label><b>Customer password:</b></label>
                        </th>
                        <th>
                            <input type="password" placeholder="Enter the customer password" class="form-control" name="password" required=""/>
                        </th>
                    </tr>
                    <tr>
                        <th>
                            <label><b>Customer email:</b></label>
                        </th>
                        <th>
                            <input type="text" placeholder="Enter the customer email" class="form-control" name="email" required=""/>
                        </th>
                    </tr>
                    <tr>
                        <th>
                            <label><b>Customer names:</b></label>
                        </th>
                        <th>
                            <input type="text" placeholder="Enter the customer names" class="form-control" name="names" required=""/>
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
