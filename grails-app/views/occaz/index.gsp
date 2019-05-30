<!doctype html>
<html>
<head>
    <meta name="layout" content="main"/>
</head>
<body>

<div class="row">
    <div class="col-3">
        <g:form controller="occaz" action="index" method="GET">
            <div class="form-group">
                <div class="input-group">
                    <input type="text" class="form-control" aria-describedby="basic-addon2" name="q">
                    <div class="input-group-append">
                        <span class="input-group-text" id="basic-addon2">
                            <i class="fas fa-search"></i>
                        </span>
                    </div>
                </div>
            </div>
            <div class="form-group ">
                <button type="submit" class="btn btn-dark">Filtrer <i class="fas fa-filter"></i> </button>
            </div>
        </g:form>
    </div>
    <div class="col-9">
        <g:each in="${occazs}" var="o">
            <g:link controller="occaz" action="show" id="${o.id}" style="all:unset; cursor:pointer">
                <div class="card flex-row flex-wrap w-100" style="width: 18rem;">
                    <div class="img-wrapper card-img-left">
                        <img src="/occaz/${o.id}/pic/${o.mainPic?.id}"/>
                    </div>
                    <div class="card-body">
                        <div class="card-title">
                            <h5 class="card-title">${o.title}
                                <span class="float-right">
                                    <g:if test="${o.free}"><i class="fas fa-gift"></i> </g:if><g:else>${o.price} €</g:else>
                                </span>
                            </h5>
                            <h6 class="text-muted">${o.category}</h6>
                        </div>
                        <hr/>
                        <p class="card-text">${o.description}</p>
                    </div>
                </div>
            </g:link>
        </g:each>
    </div>
</div>


</body>
</html>
