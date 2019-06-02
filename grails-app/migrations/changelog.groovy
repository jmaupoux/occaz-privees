databaseChangeLog = {

    changeSet(author: "jmx (generated)", id: "1559474600261-1") {
        createTable(tableName: "occaz") {
            column(name: "id", type: "VARCHAR(255)") {
                constraints(nullable: "false")
            }

            column(name: "version", type: "BIGINT") {
                constraints(nullable: "false")
            }

            column(name: "free", type: "BOOLEAN") {
                constraints(nullable: "false")
            }

            column(name: "title", type: "VARCHAR(255)") {
                constraints(nullable: "false")
            }

            column(name: "date_created", type: "timestamp")

            column(name: "skype", type: "VARCHAR(255)")

            column(name: "price", type: "INT")

            column(name: "last_updated", type: "timestamp")

            column(name: "location", type: "VARCHAR(255)")

            column(name: "category", type: "VARCHAR(255)") {
                constraints(nullable: "false")
            }

            column(name: "mail", type: "VARCHAR(255)")

            column(name: "description", type: "VARCHAR(255)") {
                constraints(nullable: "false")
            }
        }
    }

    changeSet(author: "jmx (generated)", id: "1559474600261-2") {
        createTable(tableName: "occaz_pic") {
            column(name: "id", type: "VARCHAR(255)") {
                constraints(nullable: "false")
            }

            column(name: "version", type: "BIGINT") {
                constraints(nullable: "false")
            }

            column(name: "date_created", type: "timestamp")

            column(name: "last_updated", type: "timestamp")

            column(name: "content", type: "BLOB(1048576)") {
                constraints(nullable: "false")
            }

            column(name: "content_type", type: "VARCHAR(255)") {
                constraints(nullable: "false")
            }

            column(name: "occaz_id", type: "VARCHAR(255)") {
                constraints(nullable: "false")
            }
        }
    }

    changeSet(author: "jmx (generated)", id: "1559474600261-3") {
        addPrimaryKey(columnNames: "id", constraintName: "occazPK", tableName: "occaz")
    }

    changeSet(author: "jmx (generated)", id: "1559474600261-4") {
        addPrimaryKey(columnNames: "id", constraintName: "occaz_picPK", tableName: "occaz_pic")
    }

    changeSet(author: "jmx (generated)", id: "1559474600261-5") {
        addForeignKeyConstraint(baseColumnNames: "occaz_id", baseTableName: "occaz_pic", constraintName: "FKn3kdw3e2rjg9mnao7jlygwhc1", deferrable: "false", initiallyDeferred: "false", referencedColumnNames: "id", referencedTableName: "occaz")
    }
}
