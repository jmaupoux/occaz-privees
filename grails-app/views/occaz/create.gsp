<!doctype html>
<html>
<head>
    <meta name="layout" content="main"/>
</head>
<body>

<div class="card text-white bg-dark mb-3">
    <div class="card-header text-center">
        <h1>Nouvelle occaz</h1>
    </div>

    <div class="card-body bg-light text-dark">

        <g:uploadForm url="/occazs" method="POST" class="needs-validation" novalidate="novalidate">
            <div class="form-row">
                <div class="form-group col-sm-12">
                    <label for="title">${g.message(code:'occazCommand.title.label')}</label>
                    <input type="text" class="form-control ${command?.errors?.hasFieldErrors('title') ? 'is-invalid' : ''}" id="title" name="title" placeholder="Titre de l'annonce" value="${command?.title}">
                    <div class="invalid-feedback">
                        <g:fieldError field="title" bean="${command}"/>
                    </div>
                </div>
            </div>
            <div class="form-row">
                <div class="form-group col-sm-12">
                    <label for="description">${g.message(code:'occazCommand.description.label')}</label>
                    <textarea rows="8" class="form-control ${command?.errors?.hasFieldErrors('description') ? 'is-invalid' : ''}" id="description" name="description">${command?.description}</textarea>
                    <div class="invalid-feedback">
                        <g:fieldError field="description" bean="${command}"/>
                    </div>
                </div>
            </div>
            <div class="form-row">
                <div class="form-group col-sm-12 col-md-3">
                    <label for="price">${g.message(code:'occazCommand.location.label')}</label>
                    ${locations[0]}
                    <g:select name="location" from="${locations}" value="${command?.location}" class="form-control"
                      noSelection="['':'']"/>
                </div>
            </div>
            <div class="form-row">
                <div class="form-group col-sm-12 col-md-2">
                    <label for="price">${g.message(code:'occazCommand.price.label')}</label>
                    <div class="input-group">
                        <div class="input-group-prepend">
                            <span class="input-group-text" id="inputGroupPrepend">€</span>
                        </div>
                        <input type="text" class="form-control ${command?.errors?.hasFieldErrors('price') ? 'is-invalid' : ''}" id="price" name="price" value="${command?.price}" aria-describedby="inputGroupPrepend">
                        <div class="invalid-feedback">
                            <g:fieldError field="price" bean="${command}"/>
                        </div>
                    </div>
                </div>
            </div>
            <div class="form-group ">
                <button type="submit" class="btn btn-primary">Créer l'annonce</button>
            </div>
        </g:uploadForm>

    </div>
</div>

</body>
</html>
