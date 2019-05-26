package occaz.privees

import grails.validation.Validateable
import org.grails.core.io.ResourceLocator
import org.springframework.beans.factory.annotation.Value

class OccazController {

    @Value('${app.listing.max}')
    int max

    def occazService

    ResourceLocator grailsResourceLocator

    def index() {
        def search = params.q
        def occazs = Occaz.findAll(max: max)

        [occazs: occazs, locations: grailsApplication.config.app.locations]
    }

    def create(){
        [command: flash.command, locations: grailsApplication.config.app.locations]
    }

    def show(String id){
        def occaz = Occaz.findById(id)

        if(!occaz){
            render view: "notFound"
            return
        }
        [occaz: occaz]
    }

    def save(OccazCommand command){
        if (command.hasErrors()) {
            flash.command = command
            redirect(controller: 'occazs', action: 'create')
            return
        }
        occazService.save(new Occaz(command.properties))
        redirect controller: 'occazs'
    }

    def delete(String id){
        //TODO Occaz.deleteAll(id);
    }

    def showPicture(String id, String picId){
        def image = getClass().getResourceAsStream('/occaz.png')
        render file: image, contentType: 'image/png'
    }
}

class OccazCommand implements Validateable {
    String title
    String description
    Integer price
    String location
    boolean free = false

    static constraints = {
        title(blank: false, size: 1..64)
        description(blank: false, size: 1..2048)
        price(nullable: true, validator:{
            value, obj ->
                if(obj.free) return true
                if (!value) return ['nullable']
        })
        location nullable: true
    }
}

