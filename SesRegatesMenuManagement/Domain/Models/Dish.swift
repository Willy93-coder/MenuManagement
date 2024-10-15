//
//  Dish.swift
//  SesRegatesMenuManagement
//
//  Created by Willy on 29/6/24.
//

import Foundation
struct Dish: Identifiable, Hashable {
    let id = UUID()
    var name: String
    var price: Float
}
