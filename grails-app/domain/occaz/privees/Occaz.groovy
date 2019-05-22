package occaz.privees

import java.time.LocalDate

class Occaz {

    String id
    String title
    String content

    String location

    int price
    boolean gift

    LocalDate dateCreated
    Locale    lastUpdated

    static constraints = {
        id generator: 'uuid'
    }

    static mapping = {
        sort dateCreated: "desc"
    }
}
