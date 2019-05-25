<!doctype html>
<html>
<head>
    <meta name="layout" content="main"/>
</head>
<body>

<div class="row">
    <div class="col-3">
        <g:form controller="occaz" action="search" class="form-inline  mr-auto ml-auto" method="GET">
            <div class="input-group">
                <input type="text" class="form-control" aria-describedby="basic-addon2" name="q">
                <div class="input-group-append">
                    <span class="input-group-text" id="basic-addon2">
                        <i class="fas fa-search"></i>
                    </span>
                </div>
            </div>
        </g:form>
    </div>
    <div class="col-9">
        <g:each in="${occazs}" var="o">
            <g:link controller="occaz" action="show" id="${o.id}" style="all:unset; cursor:pointer">
                <div class="card flex-row flex-wrap w-100" style="width: 18rem;">
                    <img src="/occazs/${o.id}/pic/toto"  class="card-img-left w-25"/>
                    <div class="card-body">
                        <h5 class="card-title">${o.title}</h5>
                        <hr/>
                        <p class="card-text">${o.description}</p>
                    </div>
                </div>
                <p>Occaz ${o.title}</p>
            </g:link>
        </g:each>
    </div>
</div>


</body>
</html>
