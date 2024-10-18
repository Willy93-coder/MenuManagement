//
//  SuggestionsMenu.swift
//  SesRegatesMenuManagement
//
//  Created by Willy on 29/6/24.
//

import Foundation
struct SuggestionsMenu: Identifiable, Hashable {
    let id = UUID()
    var suggestions: [Dish]
}
