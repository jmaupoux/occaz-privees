package priv.occaz

import grails.gorm.transactions.Transactional

@Transactional
class OccazService {

    def save(Occaz occaz) {
        occaz.save(failOnError: true)
    }
}
