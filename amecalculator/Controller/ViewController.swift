//
//  ViewController.swift
//  amecalculator
//
//  Created by Alan Soares de Oliveira on 23/06/21.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: - Properties
    
    let heigthOfVIew = UIScreen.main.bounds.height
    
    private lazy var keyboardView = Keyboard()
    
    private let screenLabel: UILabel = {
        let label = UILabel()
        label.text = "0"
        label.textColor = .white
        label.textAlignment = .right
        label.font = UIFont.systemFont(ofSize: 50)
        return label
    }()

    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
    }
    
    // MARK: - Helpers
    
    func configureUI() {
        view.backgroundColor = .black
        keyboardView.delegate = self
        view.addSubview(keyboardView)
        keyboardView.anchor(left: view.leftAnchor, bottom: view.safeAreaLayoutGuide.bottomAnchor, right: view.rightAnchor, height: heigthOfVIew * 0.6)
        
        view.addSubview(screenLabel)
        screenLabel.anchor(left: view.leftAnchor, bottom: keyboardView.topAnchor, right: view.rightAnchor, paddingRight: 10, height: heigthOfVIew * 0.2)
        
    }
}


extension ViewController: KeyboardDelegate {
    func tappedTheKeyboardNumber(_ text: String) {
        screenLabel.text = text
    }
    
//    func tappedTheKeyboardNumber(_ text: KeyboardType) {
//        screenLabel.text = text.labelText
//    }
    
    func tappedTheKeyboardClear() {
        screenLabel.text = "0"
    }
    
//    func tappedTheKeyboardNumber(_ text: String) {
//        print("DEBUG: Ac button text is \(text)")
//        screenLabel.text = text
//    }
}
