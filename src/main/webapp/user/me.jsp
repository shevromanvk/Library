<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <title>Bookshelf</title>
        <script type="text/javascript">
            <%@include file="../js/scroll.js"%>
            <%@include file="../js/searchTable.js"%>
            <%@include file="../js/showTable.js"%>
        </script>
        <style>
            <%@include file="../css/reset.css"%>
            <%@include file="../css/text.css"%>
            <%@include file="../css/960_24_col.css"%>
            <%@include file="../css/header-footer.css"%>
            <%@include file="../css/table.css"%>
        </style>
        <link rel="stylesheet" href="../css/reset.css">
        <link rel="stylesheet" href="../css/text.css">
        <link rel="stylesheet" href="../css/960_24_col.css">
        <link rel="stylesheet" href="../css/header-footer.css">
        <link rel="stylesheet" href="../css/table.css">
        <link href="https://fonts.googleapis.com/css?family=Montserrat:300,400" rel="stylesheet">
    </head>
    <body>
        <div class="container_24">
            <header class="header" id="myHeader">
                <h1 class="grid_7" id="logo"><a href="<c:url value="/main"/>">library</a></h1>
                <nav class="grid_17">
                    <ul>
                        <li><a href="/me">Me</a></li>
                        <li><a href="/history">History</a></li>
                        <li><a href="/trends">Trends</a></li>
                        <li><a href="/logout">Logout</a></li>
                    </ul>
                </nav>
            </header>
            <div class="main">
                <p class="title">My bookshelf</p>
                <p class="t2">Active records</p>
                <table id="myTable" class="stats">
                    <tr class="header">
                        <th>Book name</th>
                        <th>Author</th>
                        <th>Days on hands</th>
                        <th></th>
                    </tr>
                    <tr>
                        <td>Fairy Tales</td>
                        <td>Taras Shevchenko</td>
                        <td>1</td>
                        <td><a href="?ret_id=8">Return</a></td>
                    </tr>
                    <tr>
                        <td>Not Fairy Tales</td>
                        <td>Lesia Ukrainka</td>
                        <td>8</td>
                        <td><a href="?ret_id=251">Return</a></td>
                    </tr>
                    <tr>
                        <td>Maybe Fairy Tales</td>
                        <td>Orest Patuk</td>
                        <td>19</td>
                        <td><a href="?ret_id=958">Return</a></td>
                    </tr> 
                </table>
                <p class="t2">Please, return books before 30 days. After one month user counts as a debtor.</p>
                <p class="title">Info</p>
                <div class="container_24">
                    <p class="t2">username: someusername</p>
                    <p class="t2"><a href="change-pass.jsp">change password</a></p>
                </div>
                <p class="t3">You are using Library for ... days</p>
            </div>
        </div>
        <footer>
            <p>2018</p>
        </footer>
        <script src="../js/scroll.js"></script
    </body>
</html>