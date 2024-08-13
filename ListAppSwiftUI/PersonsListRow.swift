//
//  PersonsListRow.swift
//  ListAppSwiftUI
//
//  Created by Marat Fakhrizhanov on 13.08.2024.
//

import SwiftUI

struct PersonsListRow: View {
   
    let person: Person
    
    var body: some View {
        HStack {
            Text("\(person.name)")
            
            Text("\(person.surname)")
        }
    }
}

#Preview {
    PersonsListRow(person: Person(id: 1, name: "mas", surname: "mmkksdsv", phone: "242424", eMail: "211111@@@@@mail.ru"))
}
