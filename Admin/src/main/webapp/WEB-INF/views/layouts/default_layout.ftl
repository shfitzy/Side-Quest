<#setting url_escaping_charset='ISO-8859-1'>

<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <script type="text/javascript" src="http://code.jquery.com/jquery-1.7.1.min.js"></script>
    <script src="${context_path}/js/aw.js"></script>
    <link rel="stylesheet" type="text/css" href="/bootstrap"/>
    <title>Side Quest - Admin</title>

    <@yield to="style"/>
    <@yield to="js"/>
</head>
<body>

<div class="navbar">
    <a href="/home">Home</a>
    <div class="dropdown">
        <button class="dropbtn">Cards
            <i class="fa fa-caret-down"></i>
        </button>
        <div class="dropdown-content">
            <a href="/card_set">Card Sets</a>
            <a href="/card_pack">Card Packs</a>
        </div>
    </div>
    <div class="dropdown" style="float:right">
        <button class="dropbtn">Account
            <i class="fa fa-caret-down"></i>
        </button>
        <div class="dropdown-content">
            <a href="/login/logout">Logout</a>
        </div>
    </div>
</div>

<div class="main">
    <div class="content">
        ${page_content}
    </div>
</div>

</body>

</html>