//
//  DinnerMockupList.swift
//  SesRegatesMenuManagement
//
//  Created by Willy on 28/6/24.
//

import Foundation
let dinnerMockupList: MainMenu = MainMenu(
    menu: ["Entrants": [
                Dish(name: "Croquetes variades", price: 7.50),
                Dish(name: "Croquetes de bullit", price: 6.50),
                Dish(name: "Aletes de pollastre", price: 7.50),
                Dish(name: "Frit mallorquí", price: 10.95),
                Dish(name: "Frit de matances", price: 7.50),
                Dish(name: "Caragols", price: 7.50),
            ],
           "Carns": [
                Dish(name: "Guàtleres a la planxa (2u)", price: 11.90),
                Dish(name: "Entrecot", price: 22.00),
                Dish(name: "Chuletón 700g.", price: 26.00),
                Dish(name: "Solomillo", price: 25.00),
                Dish(name: "Pit de pollastre", price: 12.00),
                Dish(name: "Costelles de xai", price: 18.00),
           ],
           "Peix": [
            Dish(name: "Calamar Nacional", price: 20.00),
            Dish(name: "Salmó a la planxa", price: 15.00),
            Dish(name: "Llobarro a la planxa (700gr)", price: 22.00),
           ],
           "Pa amb oli": [
                Dish(name: "Sèpia i bacallà", price: 14.50),
                Dish(name: "De sobrassada, formatge i camaiot", price: 12.50),
                Dish(name: "Ses Regates: solomillo amb foie, formatge de cabra i ceba caramel·litzada", price: 18.50),
           ],
           "Postres Casolans": [
                Dish(name: "Gató amb gelat", price: 5.50),
                Dish(name: "Pastís de formatge", price: 5.50),
                Dish(name: "Pastís de pastanaga", price: 5.50),
                Dish(name: "Pastís red velvet", price: 5.50),
                Dish(name: "Pudin d'ensaimada", price: 3.50)
           ]
    ]
)

