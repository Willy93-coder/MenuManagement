//
//  ViewModelTest.swift
//  SesRegatesMenuManagementTests
//
//  Created by Willy on 15/10/24.
//

import XCTest
@testable import SesRegatesMenuManagement

final class ViewModelTest: XCTestCase {
    
    var suggestionsViewModel: SuggestionsViewModel!
    var dish: Dish!

    override func setUpWithError() throws {
        suggestionsViewModel = SuggestionsViewModel()
    }

    override func tearDownWithError() throws {}

    func testCreateDish() throws {
        // Arrange - Given
        let dishName = "Test Dish 2"
        let dishPrice = "30.0"
        
        // Act - When
        suggestionsViewModel.createDish(plate: dishName, price: dishPrice)
        
        // Assert - Then
        XCTAssertEqual(suggestionsViewModel.suggestionsMenu.count, 1)
        XCTAssertEqual(suggestionsViewModel.suggestionsMenu.first?.name, dishName)
        XCTAssertEqual(suggestionsViewModel.suggestionsMenu.first?.price, Float(dishPrice))
    }
    
    func testEditDish() throws {
        // Arrange - Given
        suggestionsViewModel.createDish(plate: "Test Dish 1", price: "20.0")
        let newDishName = "Test Dish 3"
        let newDishPrice = "12.5"
        
        // Act - When
        if let dish = suggestionsViewModel.suggestionsMenu.first {
            suggestionsViewModel.editDish(dish: dish, plate: newDishName, price: newDishPrice)
            
            // Assert - Then
            XCTAssertEqual(suggestionsViewModel.suggestionsMenu.count, 1)
            XCTAssertNotEqual(dish.name, newDishName)
            XCTAssertNotEqual(dish.price, Float(newDishPrice))
        }
    }
}
