package occaz.privees

class UrlMappings {

    static mappings = {
        "/occazs"(resources:'occaz', includes:['index', 'show', 'save', 'delete'])

        "/"(view:"/index")
        "500"(view:'/error')
        "404"(view:'/notFound')
    }
}
