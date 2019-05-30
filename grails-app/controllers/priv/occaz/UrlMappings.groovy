package priv.occaz

class UrlMappings {

    static mappings = {
        get "/occaz"(controller:"occaz", action:"index")
        get "/occaz/create"(controller:"occaz", action:"create")
        post "/occaz"(controller:"occaz", action:"save")
        get "/occaz/$id"(controller:"occaz", action:"show")
        get "/occaz/$occazId/pic/$id"(controller:"occaz", action:"showPicture")
        //get "/occazs/$id/edit"(controller:"occaz", action:"edit")
        //put "/occazs/$id"(controller:"occaz", action:"update")
        //delete "/occazs/$id"(controller:"occaz", action:"delete")

        "/"(controller: "occaz", action: "index")
        "500"(view:'/error')
        "404"(view:'/notFound')
    }
}
