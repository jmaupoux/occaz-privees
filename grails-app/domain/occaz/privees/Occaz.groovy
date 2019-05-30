package occaz.privees

import java.time.LocalDate

class Occaz {

    String id
    String category
    String title
    String description

    String location

    Integer price
    boolean free = false

    LocalDate dateCreated
    LocalDate lastUpdated

    static hasOne = [mainPic:OccazPic]

    static constraints = {
        id generator: 'uuid'
        location nullable: true
        dateCreated nullable: true
        lastUpdated nullable: true
        price nullable: true
        mainPic nullable: true
    }

    static mapping = {
        sort dateCreated: "desc"
    }
}
