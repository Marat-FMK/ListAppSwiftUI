//
//  ContentView.swift
//  ListAppSwiftUI
//
//  Created by Marat Fakhrizhanov on 13.08.2024.
//

import SwiftUI

struct ContentView: View {
    
   let persons: [Person] = Person.getPerson()
    
    var body: some View {
        TabView {
            PersonsList(persons: persons)
                .tabItem {
                    Image(systemName: "person.3.sequence")
                    Text("Persons List")
                }
            FullInfoView(persons: persons)
                .tabItem {
                    Image(systemName: "person.3.fill")
                    Text("Persons Full Info")
                }
        }
    }
}

#Preview {
    ContentView()
}
