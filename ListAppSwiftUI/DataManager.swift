//
//  File.swift
//  ListAppSwiftUI
//
//  Created by Marat Fakhrizhanov on 13.08.2024.
//

import Foundation
struct Person: Identifiable {
   
    
    let id : Int
    let name: String
    let surname: String
    let phone: String
    var eMail: String
    
    static func getPerson() -> [Person] {
        var persons: [Person] = []
        names.shuffle()
        surnames.shuffle()
        phones.shuffle()
        emails.shuffle()
        for i in 0...9 {
            let person = Person(id: i, name: names[i],
                                surname: surnames[i],
                                phone: phones[i],
                                eMail: emails[i])
            persons.append(person)
        }
        return persons
    }
}

var names = ["Veronika", "Igor", "Marat", "Daria", "kirill", "Nikita", "Amir","Leila", "Marina","Maksim"]
var surnames = ["Pashenchyk", "Matveev", "Pak", "Kireeva", "Mavsisyan", "Polkilo", "Fahermen", "Shnaider", "Mavletdinov", "Tilorchyk"]
var phones = [ "89261234337", "89234234567", "8923458467", "89261238867", "89261234907", "89261230127", "89261234500", "89243674567", "89261233367", "89261238567" ]

var emails = ["fefwfw@mail.ru", "fefwfw@mail.ru", "fefwfw@mail.ru", "fefwfw@mail.ru", "fefwfw@mail.ru", "fefwfw@mail.ru", "fefwfw@mail.ru", "fefwfw@mail.ru", "fefwfw@mail.ru", "fefwfw@mail.ru" ]

