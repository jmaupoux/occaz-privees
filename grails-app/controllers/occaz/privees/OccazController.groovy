package occaz.privees

import org.springframework.beans.factory.annotation.Value

class OccazController {

    @Value('${app.listing.max}')
    int max

    def index() {
        def occazs = Occaz.findAll(max: max)

        [occazs: occazs]
    }

    def show(String id){
        def occaz = Occaz.findById(id)

        if(!occaz){
            render view: "notFound"
            return
        }
        [occaz: occaz]
    }

    def save(){

    }

    def delete(String id){
        //TODO Occaz.deleteAll(id);
    }
}
