package priv.occaz


import java.time.LocalDateTime

class Occaz {

    String id
    String category
    String title
    String description

    String location

    Integer price
    boolean free = false

    LocalDateTime dateCreated
    LocalDateTime lastUpdated

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
