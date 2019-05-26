package occaz.privees

import java.sql.Types
import java.time.LocalDate

class OccazPic {

    String id
    Occaz occaz

    byte[]  content
    String  contentType

    LocalDate dateCreated
    LocalDate lastUpdated

    static constraints = {
        dateCreated nullable: true
        lastUpdated nullable: true
        content size: 0..(1024*1024)
    }

    static mapping = {
        id generator: 'uuid'
        content column: "content", length: (1024*1024)
    }
}
