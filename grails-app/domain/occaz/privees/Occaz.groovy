package occaz.privees

import java.time.LocalDate

class Occaz {

    String id
    String title
    String description

    String location

    int price
    boolean gift = false

    LocalDate dateCreated
    LocalDate lastUpdated

    static constraints = {
        id generator: 'uuid'
        location nullable: true
        dateCreated nullable: true
        lastUpdated nullable: true
    }

    static mapping = {
        sort dateCreated: "desc"
    }
}
