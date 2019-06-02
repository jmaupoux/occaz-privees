package priv.occaz

class OccazPic {

    String id
    Occaz occaz

    byte[]  content
    String  contentType

    Date dateCreated
    Date lastUpdated

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
