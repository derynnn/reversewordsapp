//
//  reversewordsappTests.swift
//  reversewordsappTests
//
//  Created by Anastasia Tochilova  on 14.05.2024.
//

import XCTest
@testable import reversewordsapp

final class ReverseViewControllerTests: XCTestCase {

    var viewController: ReverseViewController!
    var inputTextField: UITextField!
    var resultLabel: UILabel!
    
    override func setUp() {
        super.setUp()
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        viewController =
        storyboard.instantiateViewController(withIdentifier: "ReverseViewController") as? ReverseViewController
        viewController.loadViewIfNeeded()
        inputTextField = viewController.inputTextField
        resultLabel = viewController.resultLabel
    }
    
    override func tearDown() {
        viewController = nil
        inputTextField = nil
        resultLabel = nil
        
        super.tearDown()
    }
    
    func testReverseButtonTapped() {
        inputTextField.text = "sup bro"
        viewController.reverseButtonTapped(UIButton())
        let expectedOutput = "pus orb"
        XCTAssertEqual(resultLabel.text, expectedOutput, "The result label text is not correct after button tap")
    }
}
