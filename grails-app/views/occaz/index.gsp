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
            <a style="all:unset; cursor:pointer" data-toggle="xxmodal" data-target="#xxdetailModal" href="#"
               data-title="${o.title}"
               data-description="${o.description}"
               data-pic="${o.mainPic}"
               data-skype="${o.skype}"
               data-mail="${o.mail}">
                <div class="card flex-row flex-wrap w-100 mini-description" style="width: 18rem;">
                    <div class="img-wrapper card-img-left">
                        <g:if test="${o.mainPic}">
                            <img src="/occaz/${o.id}/pic/${o.mainPic?.id}"/>
                        </g:if>
                        <g:else>
                            <asset:image src="no-pic.svg" alt="Photo non disponible"/>
                        </g:else>
                    </div>
                    <div class="card-body">
                        <a href="#" class="float-right show-description text-dark">
                            <i class="fa fa-2x fa-plus-square"></i>
                        </a>
                        <div class="card-title">
                            <h5 class="card-title">${o.title}
                                <span class="float-right">
                                    <g:if test="${o.free}"><i class="fas fa-gift"></i> </g:if><g:else>${o.price} €</g:else>
                                </span>
                            </h5>
                            <h6 class="text-muted">${o.category}</h6>
                        </div>
                        <hr/>
                        <div>
                            <pre class="card-text">${o.description}</pre>
                        </div>
                        <footer class="text-center">
                            <g:if test="${o.skype}">
                                <a href="skype:${o.skype}?chat" class="btn btn-dark" role="button">
                                    <i class="fab fa-skype"></i> Skype
                                </a>
                            </g:if>
                            <g:if test="${o.mail}">
                                <a href="mailto:${o.mail}" class="btn btn-dark" role="button">
                                    <i class="fab fa-envelope"></i> Skype
                                </a>
                            </g:if>
                        </footer>
                    </div>
                </div>
            </a>
        </g:each>
    </div>
</div>

<div class="modal fade" id="detailModal" tabindex="-1" role="dialog" aria-labelledby="detailModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">New message</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form>
                    <div class="form-group">
                        <label for="recipient-name" class="col-form-label">Recipient:</label>
                        <input type="text" class="form-control" id="recipient-name">
                    </div>
                    <div class="form-group">
                        <label for="message-text" class="col-form-label">Message:</label>
                        <textarea class="form-control" id="message-text"></textarea>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                <button type="button" class="btn btn-primary">Send message</button>
            </div>
        </div>
    </div>
</div>

<content tag="js.custom">
    <asset:javascript src="listing.js"/>
</content>

</body>
</html>
