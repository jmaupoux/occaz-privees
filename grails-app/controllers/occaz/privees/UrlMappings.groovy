package occaz.privees

class UrlMappings {

    static mappings = {
        get "/occazs"(controller:"occaz", action:"index")
        get "/occazs/create"(controller:"occaz", action:"create")
        post "/occazs"(controller:"occaz", action:"save")
        get "/occazs/$id"(controller:"occaz", action:"show")
        get "/occazs/$occazId/pic/$id"(controller:"occaz", action:"showPicture")
        //get "/occazs/$id/edit"(controller:"occaz", action:"edit")
        //put "/occazs/$id"(controller:"occaz", action:"update")
        //delete "/occazs/$id"(controller:"occaz", action:"delete")

        "/"(controller: "occaz", action: "index")
        "500"(view:'/error')
        "404"(view:'/notFound')
    }
}
