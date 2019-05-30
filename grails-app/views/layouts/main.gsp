<!doctype html>
<html lang="en" class="no-js">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <title>
        <g:layoutTitle default="Priv' Occaz - vos petites annonces privées"/>
    </title>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <asset:link rel="icon" href="favicon.ico" type="image/x-ico"/>

    <asset:stylesheet src="application.css"/>

    <g:layoutHead/>
</head>

<body class="h-100">
<div class="wrapper">
    <nav class="navbar navbar-expand-lg navbar-dark navbar-static-top bg-dark" role="navigation">
        <a class="navbar-brand" href="/#"><asset:image src="occaz.png" alt="Priv'Occaz Logo" width="64px"/></a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarContent" aria-controls="navbarContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" aria-expanded="false" style="height: 0.8px;" id="navbarContent">
            <ul class="nav navbar-nav  ml-auto">
                <li><g:link controller="occaz" action="create"><i class="fas fa-plus-circle fa-4x"></i></g:link>
            </ul>
        </div>

    </nav>

    <div class="container">
        <div class=" m-5">
            <g:layoutBody/>
        </div>
    </div>


    <div id="spinner" class="spinner" style="display:none;">
        <g:message code="spinner.alt" default="Loading&hellip;"/>
    </div>
</div>
<footer class="footer mt-auto bg-secondary text-white">
    <div class="container">
        © 2019 jmaupoux
    </div>
</footer>
<asset:javascript src="application.js"/>
</body>
</html>
