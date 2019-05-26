package occaz.privees

import java.time.LocalDate

class Occaz {

    String id
    String title
    String description

    String location

    Integer price
    boolean free = false

    LocalDate dateCreated
    LocalDate lastUpdated

    static constraints = {
        id generator: 'uuid'
        location nullable: true
        dateCreated nullable: true
        lastUpdated nullable: true
        price nullable: true
    }

    static mapping = {
        sort dateCreated: "desc"
    }
}
