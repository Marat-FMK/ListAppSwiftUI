//
//  FullInfoView.swift
//  ListAppSwiftUI
//
//  Created by Marat Fakhrizhanov on 13.08.2024.
//

import SwiftUI

struct FullInfoView: View {
    
    @State var isPresented: Bool = false
    
    let persons: [Person]
    
    var body: some View {
        List(persons) { person in
             Section(header: Text("\(person.name) \(person.surname)")) {
                 
                    Text(person.phone)
                        .foregroundStyle(Color.red)
                    Text(person.eMail)
                        .foregroundStyle(Color.black)
                
            }
                .font(.title2)
                
            }
            
            .padding()
        }
    }

#Preview {
    FullInfoView(persons: Person.getPerson())
}
