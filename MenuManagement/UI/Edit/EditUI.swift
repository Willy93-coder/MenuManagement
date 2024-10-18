//
//  EditUI.swift
//  SesRegatesMenuManagement
//
//  Created by Willy on 4/7/24.
//

import SwiftUI

struct EditUI: View {
    
    @ObservedObject var viewModel: SuggestionsViewModel
    var dish: Dish?
    @State private var plate: String
    @State private var price: String
    @FocusState private var isFocus: FormFieldFocus?
    
    enum FormFieldFocus: Hashable {
        case dish, price
    }
    
    init(viewModel: SuggestionsViewModel, dish: Dish? = nil) {
        self.viewModel = viewModel
        self.dish = dish
        _plate = State(initialValue: dish?.name ?? "")
        _price = State(initialValue: dish != nil ? String(dish!.price) : "")
    }
    
    var body: some View {
        NavigationStack {
            Form {
                Section {
                    TextField("Plato", text: $plate).focused($isFocus, equals: .dish)
                    TextField("Precio", text: $price).focused($isFocus, equals: .price).keyboardType(.decimalPad)
                }
                Section{
                    Button("Guardar") {
                        if self.dish != nil {
                            viewModel.editDish(dish: dish!, plate: self.plate, price: self.price)
                        } else {
                            viewModel.createDish(plate: self.plate, price: self.price)
                        }
                    }
                }.disabled(plate.isEmpty || price.isEmpty)
                
                // Add toast component to inform the dish is saved.
            }
            .navigationTitle("Edición del plato" )
        }
    }
}


