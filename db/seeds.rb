# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
categories = ConsentCategory.create([
            {name: 'data-use-for-service', compulsory: true, description: 'All use of my information for services provided by clinic.'},
            {name: 'contact-for-service', compulsory: true, description: 'All to contact me for services provided by clinic.'},
            {name: 'data-use-for-other-activities', compulsory: false, description: 'All use of my information for other activities which are apart from services provided by clinic.'},
            {name: 'contact-for-other-activities', compulsory: false, description: 'All to contact me for other activities which are apart from services provided by clinic.'}])

Consent.create([
                   {description: 'I agree for use of my personal information services provided by clinic.',consent_category: categories.first},
                   {description: 'I agree for contacting me (through sms, email etc.) for the services offered by clinic.',consent_category: categories.second},
                   {description: 'I agree for using my personal information for other activities organised by clinic.',consent_category: categories.third},
                   {description: 'I agree for contacting me (through sms, email etc.) for other activities organised by clinic.',consent_category: categories.fourth}])
