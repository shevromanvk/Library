<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <title>Edit instance</title>
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
            <%@include file="../css/form.css"%>
        </style>
        <link rel="stylesheet" href="../css/reset.css">
        <link rel="stylesheet" href="../css/text.css">
        <link rel="stylesheet" href="../css/960_24_col.css">
        <link rel="stylesheet" href="../css/header-footer.css">
        <link rel="stylesheet" href="../css/form.css">
        <link href="https://fonts.googleapis.com/css?family=Montserrat:300,400" rel="stylesheet">
    </head>
    <body>
        <div class="container_24">
            <header class="header" id="myHeader">
                <h1 class="grid_7" id="logo"><a href="<c:url value="/admin/main"/>">l-admin</a></h1>
                <nav class="grid_17">
                    <ul>
                        <li><a href="records.jsp">Records</a></li>
                        <li><a href="add-book">Add book</a></li>
                        <li><a href="../admin/users-list">Users</a></li>
                        <li><a href="../WEB-INF/login">Logout</a></li>
                    </ul>
                </nav>
            </header>
        </div>
        <div class="main">
            <p class="title">Edit instance #</p>
            <form action="edit">
                <fieldset>
                    <div class="group">
                        <label for="name">Book name</label>
                        <input type="text" id="name">
                    </div>
                    <div class="group">
                        <label for="author">Author</label>
                        <input type="text" id="author">
                    </div>
                    <div class="group">
                        <label for="coauthor">Coauthor</label>
                        <input type="text" id="coauthor">
                    </div>
                    <div class="group">
                        <label for="edition_year">Edition year</label>
                        <input type="number"id="edition_year">
                    </div>
                    <div class="buttons">
                        <button type="submit" class="button" title="Apply new data">Submit</button>
                        <button type="submit" class="button" title="Remove instance">Remove</button>
                    </div>
                </fieldset>
            </form>
        </div>
        <footer>
            <p>2018</p>
        </footer>
        <script src="../js/scroll.js"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

    </body>
</html>