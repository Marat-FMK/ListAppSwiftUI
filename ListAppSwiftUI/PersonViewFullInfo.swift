//
//  PersonviewFillInfo.swift
//  ListAppSwiftUI
//
//  Created by Marat Fakhrizhanov on 13.08.2024.
//

import SwiftUI

struct PersonViewFullInfo: View {
    
   
    
    var person: Person
   
    var body: some View {
            VStack(alignment: .leading) {
               
                    Text("\(person.surname) \(person.name)")
                        .font(.system(size: 40))
                        .frame(alignment: .center)
                 .font(.system(size: 25))
                
                
                Image(systemName: "person.circle")
                    .resizable()
                    .frame(width: 290, height: 290,alignment: .center)
                    
                
                Text("📧 - \(person.eMail)")
                    .font(.system(size: 30))
                Text("☎️ - \(person.phone)")
                    .font(.system(size: 30))
                Spacer()
                Text("\(person.name == "Marat" ? "😎" : "" )")
                    .font(.system(size: 200))
            }
     }
}

#Preview {
    PersonView( person: Person(id: 1, name: "Marat", surname: "Fahr", phone: "24242", eMail: "24242"))
}
