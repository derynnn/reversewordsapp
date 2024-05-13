//
//  ViewController.swift
//  reversewordsapp
//
//  Created by Anastasia Tochilova  on 03.05.2024.
//

import UIKit

final class ReverseViewController: UIViewController {

    // MARK: - IBOutlets
    
    @IBOutlet weak var inputTextField: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    
    // MARK: - View Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - IBActions
    
    @IBAction func reverseButtonTapped(_ sender: UIButton) {
        guard let inputText = inputTextField.text else {
            return
        }
        let reversedWords = reverseWords(in: inputText)
        resultLabel.text = reversedWords
    }
    
    // MARK: - Private Methods
    
    private func reverseWords(in input: String) -> String {
        let words = input.components(separatedBy: .whitespaces)
        let reversedWords = words.map { String($0.reversed()) }
        return reversedWords.joined(separator: " ")
    }
}
