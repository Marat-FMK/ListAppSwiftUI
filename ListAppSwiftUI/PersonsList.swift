//
//  PersonsList.swift
//  ListAppSwiftUI
//
//  Created by Marat Fakhrizhanov on 13.08.2024.
//

import SwiftUI

struct PersonsList: View {
    @State var isPresented: Bool = false
    let persons: [Person]
    
    var body: some View {
        NavigationView() {
            List(persons) { person in
                NavigationLink(destination: PersonView( person: person)){
                    PersonsListRow(person: person)
                }
                .listStyle(.grouped)
                .navigationTitle("Person List")
            }
        }
    }
}
#Preview {
    PersonsList(persons: Person.getPerson())
}
