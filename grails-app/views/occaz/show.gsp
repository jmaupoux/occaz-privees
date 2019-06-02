<!doctype html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Welcome to Grails</title>
</head>
<body>
<content tag="nav">

</content>

<div class="card" style="width: 18rem;">
    <g:if test="${occaz.mainPic}">
        <img src="/occaz/${occaz.id}/pic/${occaz.mainPic?.id}" class="card-img-top"/>
    </g:if>
    <g:else>
        <asset:image src="no-pic.svg" alt="Photo non disponible" class="card-img-top"/>
    </g:else>
    <div class="card-body">
        <h5 class="card-title">${occaz.title}</h5>
        <p class="card-text">${occaz.description}</p>
        <div class="card-footer">
            <g:if test="${occaz.skype}">
                <a href="skype:${occaz.skype}?chat" class="btn btn-dark" role="button">
                    <i class="fab fa-skype"></i> Skype
                </a>
            </g:if>
            <g:if test="${occaz.mail}">
                <a href="mailto:${occaz.mail}" class="btn btn-dark" role="button">
                    <i class="fab fa-envelope"></i> Skype
                </a>
            </g:if>
        </div>
    </div>
</div>
</body>
</html>
