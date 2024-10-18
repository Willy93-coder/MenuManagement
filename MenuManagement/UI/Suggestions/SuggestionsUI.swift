//
//  SuggestionsUI.swift
//  SesRegatesMenuManagement
//
//  Created by Willy on 28/6/24.
//

import SwiftUI


struct SuggestionsUI: View {
    
    @StateObject private var suggestionsViewModel = SuggestionsViewModel(suggestions: suggestionMockupList.suggestions)
    @State var showAddDish: Bool = false
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(suggestionsViewModel.suggestionsMenu) { suggestion in
                    NavigationLink {
                        EditUI(viewModel: suggestionsViewModel, dish: suggestion)
                    } label: {
                        HStack {
                            Text(suggestion.name)
                            Spacer()
                            Spacer()
                            Text(String(format: "%.2f", suggestion.price) + "€")
                        }.padding([.top, .bottom], 5)
                    }
                }
                Section{
                    NavigationLink {
                        EditUI(viewModel: suggestionsViewModel)
                    } label: {
                        Text("Añadir plato...").fontWeight(.medium).foregroundStyle(.blue).padding([.top, .bottom], 8).contentShape(Rectangle())
                    }
                }
            }
            .navigationTitle("Sugerencias del día")
        }
    }
}

#Preview {
    SuggestionsUI()
}
