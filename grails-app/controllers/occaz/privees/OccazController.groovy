package occaz.privees

import grails.validation.Validateable
import org.grails.core.io.ResourceLocator
import org.springframework.beans.factory.annotation.Value
import org.springframework.web.multipart.MultipartFile

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

        Occaz occaz = new Occaz()
        bindData(occaz, command, [exclude : 'mainPic'])

        if(command.mainPic) {
            OccazPic pic = new OccazPic(content: command.mainPic.bytes, contentType: command.mainPic.contentType)
            occaz.mainPic = pic
        }

        occazService.save(occaz)
        redirect controller: 'occazs'
    }

    def delete(String id){
        //TODO Occaz.deleteAll(id);
    }

    def showPicture(String occazId, String id){
        def pic = OccazPic.findByOccazAndId(Occaz.get(occazId), id)
        render file: pic.content, contentType: pic.contentType
    }
}

class OccazCommand implements Validateable {
    String title
    String description
    Integer price
    String location
    boolean free = false
    MultipartFile mainPic

    static constraints = {
        title(blank: false, size: 1..64)
        description(blank: false, size: 1..2048)
        price(nullable: true, validator:{
            value, obj ->
                if(obj.free) return true
                if (!value) return ['nullable']
        })
        location nullable: true
        mainPic nullable: true, validator : { val, obj ->
            if (!['png', 'jpg', 'jpeg'].any { extension ->
                val.originalFilename?.toLowerCase()?.endsWith(extension)
            } )
                return ['extension']
        }
    }
}

