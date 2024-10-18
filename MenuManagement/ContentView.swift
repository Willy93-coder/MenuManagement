//
//  ContentView.swift
//  SesRegatesMenuManagement
//
//  Created by Willy on 28/6/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            SuggestionsUI().tabItem {
                Image(systemName: "lightbulb.fill")
                Text("Sugerencias")
            }
            LunchUI().tabItem {
                Image(systemName: "sun.min.fill")
                Text("Comida")
            }
            DinnerUI().tabItem {
                Image(systemName: "moon.fill")
                Text("Cena")
            }
        }
    }
}

#Preview {
    ContentView()
}
