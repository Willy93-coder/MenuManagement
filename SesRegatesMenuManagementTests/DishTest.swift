//
//  SesRegatesMenuManagementTests.swift
//  SesRegatesMenuManagementTests
//
//  Created by Willy on 15/10/24.
//

import XCTest
@testable import SesRegatesMenuManagement

final class DishTest: XCTestCase {

    func testInitializationDish() throws {
        // Arrange - Given
        let dishName = "Test Dish"
        let dishPrice: Float = 10.0
        
        // Act - When
        let dish = Dish(name: dishName, price: dishPrice)
        
        // Assert - Then
        XCTAssertEqual(dish.name, dishName)
        XCTAssertEqual(dish.price, dishPrice)
    }

}
