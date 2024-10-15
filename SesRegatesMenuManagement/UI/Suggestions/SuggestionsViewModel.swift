//
//  SuggestionsViewModel.swift
//  SesRegatesMenuManagement
//
//  Created by Willy on 6/7/24.
//

import Foundation
final class SuggestionsViewModel: ObservableObject {
    @Published var suggestionsMenu: [Dish]
    
    init(suggestions: [Dish]) {
        self.suggestionsMenu = suggestions
    }
    
    func createDish(plate: String, price: String){
        let newDish = Dish(name: plate, price: Float(price) ?? 0)
        self.suggestionsMenu.append(newDish)
    }
    
    func editDish(dish: Dish, plate: String, price: String) {
        if let index = self.suggestionsMenu.firstIndex(of: dish) {
            self.suggestionsMenu[index] = Dish(name: plate, price: (price as NSString).floatValue)
        }
    }
}
