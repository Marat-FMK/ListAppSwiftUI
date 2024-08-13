//
//  PersonView.swift
//  ListAppSwiftUI
//
//  Created by Marat Fakhrizhanov on 13.08.2024.
//

import SwiftUI

struct PersonView: View {
    
    @State private var hideEmail = false
    
    var person: Person
   
    var hideEmailPerson: String {
        hideEmail ? "" : person.eMail
    }
    var body: some View {
        ZStack {
            Image(systemName: "phone.connection.fill")
                 .resizable()
                 .frame(width:200, height: 200)
                 .rotationEffect(.degrees(43))
             .opacity(0.25)
            
            VStack(alignment: .leading) {
               
                    Text("\(person.surname) \(person.name)")
                        .font(.system(size: 40))
//                    Spacer()
//                    Button(action: {}) {
//                        Text("OK")
//                    }
//                    .font(.system(size: 25))
                
                Text("Email - \(hideEmailPerson)")
                    .font(.system(size: 30))
                Text("\(person.phone)")
                    .font(.system(size: 30))
                Spacer()
                Text("\(person.name == "Marat" ? "😎" : "" )")
                    .font(.system(size: 200))
            }
//            .offset(y: -200)
        }
        .toolbar {
            ToolbarItem(placement: .topBarTrailing) {
                Toggle("Hide email", isOn: $hideEmail)
                    .toggleStyle(.automatic)
            }
        }
        .padding()
     }

}

#Preview {
    PersonView( person: Person(id: 1, name: "Marat", surname: "Fahr", phone: "24242", eMail: "24242"))
}
