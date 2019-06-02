package priv.occaz

class Occaz {

    String id
    String category
    String title
    String description

    String location

    Integer price
    boolean free = false

    String skype
    String mail

    Date dateCreated
    Date lastUpdated

    static hasOne = [mainPic:OccazPic]

    static constraints = {
        id generator: 'uuid'
        location nullable: true
        dateCreated nullable: true
        lastUpdated nullable: true
        price nullable: true
        mainPic nullable: true
        skype nullable: true
        mail nullable: true
        description nullable: false
    }

    static mapping = {
        sort dateCreated: "desc"
        title length: 64
        description length: 2048
    }
}
