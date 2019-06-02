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

        <g:uploadForm url="/occaz" method="POST" class="needs-validation" novalidate="novalidate">
            <div class="form-row">
                <div class="form-group col-sm-12">
                    <label for="category">${g.message(code:'occazCommand.category.label')}</label>
                    <select class="form-control ${command?.errors?.hasFieldErrors('category') ? 'is-invalid' : ''}" id="category" name="category">
                        <option></option>
                        <g:each var="c" in="${categories}">
                            <g:each var="el" in="${c}">
                                <option value="${el.key}" disabled style="background-color:#E6E6E6">-- ${el.key} --</option>
                                <g:each var="c2" in="${el.value}">
                                    <option value="${c2}" ${command?.category == c2 ? 'selected' : ''}>${c2}</option>
                                </g:each>
                            </g:each>
                        </g:each>
                    </select>
                    <div class="invalid-feedback">
                        <g:fieldError field="category" bean="${command}"/>
                    </div>
                </div>
            </div>

            <div class="form-row">
                <div class="form-group col-sm-12">
                    <label for="title">${g.message(code:'occazCommand.title.label')}</label>
                    <input type="text" class="form-control ${command?.errors?.hasFieldErrors('title') ? 'is-invalid' : ''}" id="title" name="title" placeholder="Titre de l'annonce" value="${command?.title}" maxlength="64">
                    <div class="invalid-feedback">
                        <g:fieldError field="title" bean="${command}"/>
                    </div>
                </div>
            </div>
            <div class="form-row">
                <div class="form-group col-sm-12">
                    <label for="description">${g.message(code:'occazCommand.description.label')}</label>
                    <textarea rows="8" class="form-control ${command?.errors?.hasFieldErrors('description') ? 'is-invalid' : ''}" id="description" name="description" maxlength="2048">${command?.description}</textarea>
                    <div class="invalid-feedback">
                        <g:fieldError field="description" bean="${command}"/>
                    </div>
                </div>
            </div>
            <div class="form-row">
                <div class="form-group col-sm-12 col-md-3">
                    <label for="price">${g.message(code:'occazCommand.location.label')}</label>
                    <g:select name="location" from="${locations}" value="${command?.location}" class="form-control"
                      noSelection="['':'']"/>
                </div>
            </div>
            <div class="form-row">
                <div class="form-group col-sm-12 col-md-3">
                    <label for="mainPic">${g.message(code:'occazCommand.mainPic.label')}</label>
                    <input id="mainPic" type="file" name="mainPic" accept="image/*" class="${command?.errors?.hasFieldErrors('mainPic') ? 'is-invalid' : ''}" />
                    <div class="invalid-feedback">
                        <g:fieldError field="mainPic" bean="${command}"/>
                    </div>
                </div>
            </div>
            <div class="form-row">
                <div class="form-group col-sm-6 col-md-3">
                    <label for="price">${g.message(code:'occazCommand.price.label')}</label>
                    <div class="input-group">
                        <div class="input-group-prepend">
                            <span class="input-group-text" id="inputGroupPrepend">€</span>
                        </div>
                        <input type="text" class="form-control ${command?.errors?.hasFieldErrors('price') ? 'is-invalid' : ''}"
                               ${command?.free ? 'disabled' : ''}
                               id="price" name="price" value="${command?.price}" aria-describedby="inputGroupPrepend">
                        <div class="invalid-feedback">
                            <g:fieldError field="price" bean="${command}"/>
                        </div>
                    </div>
                </div>
                <div class="form-group col-sm-6 col-md-3">
                    <label></label>
                    <div class="btn-group-toggle" data-toggle="buttons">
                        <label class="btn btn-primary ${command?.free ? 'active':''}" onclick="toggleFree()">
                            <input type="checkbox" class="form-control" id="free" name="free" value="true" ${command?.free ? 'checked' : ''}>
                            Gratuit !
                            <i class="fas fa-gift"></i>
                        </label>
                    </div>
                </div>
            </div>
            <div class="form-row">
                <div class="form-group col-md-4">
                    <label for="skype">${g.message(code:'occazCommand.skype.label')}</label>
                    <div class="input-group">
                        <div class="input-group-prepend">
                            <span class="input-group-text" id="igskype">
                                <i class="fab fa-skype"></i>
                            </span>
                        </div>
                        <input type="text" class="form-control ${command?.errors?.hasFieldErrors('skype') ? 'is-invalid' : ''}"
                        id="skype" name="skype" value="${command?.skype}" aria-describedby="igskype">
                        <div class="invalid-feedback">
                            <g:fieldError field="skype" bean="${command}"/>
                        </div>
                    </div>
                </div>
                <div class="form-group col-sm-4">
                    <label for="mail">${g.message(code:'occazCommand.mail.label')}</label>
                    <div class="input-group">
                        <div class="input-group-prepend">
                            <span class="input-group-text" id="igmail">
                                <i class="fas fa-envelope"></i>
                            </span>
                        </div>
                        <input type="text" class="form-control ${command?.errors?.hasFieldErrors('mail') ? 'is-invalid' : ''}"
                               id="mail" name="mail" value="${command?.mail}" aria-describedby="igmail">
                        <div class="invalid-feedback">
                            <g:fieldError field="mail" bean="${command}"/>
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

<script type="text/javascript">
    function toggleFree(){
        if($("#price").attr('disabled')) {
            $("#price").removeAttr('disabled')
            $("input[name='_free']").val('false')
        }else{
            $('#price').val('')
            $('#price').attr('disabled', 'disabled')
            $("input[name='_free']").val('true')
        }
    }
</script>

</body>
</html>
