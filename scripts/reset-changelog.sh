#!/bin/sh
rm -rf grails-app/migrations/changelog.groovy
grails dbm-generate-gorm-changelog changelog.groovy
echo "done"
