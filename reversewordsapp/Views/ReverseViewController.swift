//
//  ViewController.swift
//  reversewordsapp
//
//  Created by Anastasia Tochilova  on 03.05.2024.
//

import UIKit

class ReverseViewController: UIViewController {

    @IBOutlet weak var inputTextField: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func reverseButtonTapped(_ sender: UIButton) {
        guard let inputText = inputTextField.text else {
            return
        }
        let reversedWords = reverseWords(in: inputText)
        resultLabel.text = reversedWords
    }
    
    private func reverseWords(in input: String) -> String {
        let words = input.components(separatedBy: .whitespaces)
        let reversedWords = words.map { String($0.reversed()) }
        return reversedWords.joined(separator: " ")
    }
}
