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

    override func setUpWithError() throws {
        suggestionsViewModel = SuggestionsViewModel()
    }

    override func tearDownWithError() throws {}

    func testCreateDish() throws {
        // Arrange - Given
        let dishName = "Test Dish"
        let dishPrice = "10.0"
        
        // Act - When
        suggestionsViewModel.createDish(plate: dishName, price: dishPrice)
        
        // Assert - Then
        XCTAssertEqual(suggestionsViewModel.suggestionsMenu.count, 1)
        XCTAssertEqual(suggestionsViewModel.suggestionsMenu.first?.name, dishName)
        XCTAssertEqual(suggestionsViewModel.suggestionsMenu.first?.price, Float(dishPrice))
    }
}
