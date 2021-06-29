//
//  ViewController.swift
//  amecalculator
//
//  Created by Alan Soares de Oliveira on 23/06/21.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: - Properties
    
    let heigthOfVIew = UIScreen.main.bounds.height * 0.6
    
    private lazy var keyboardView = Keyboard()

    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
    }
    
    // MARK: - Helpers
    
    func configureUI() {
        view.backgroundColor = .black
        
        view.addSubview(keyboardView)
        keyboardView.anchor(left: view.leftAnchor, bottom: view.safeAreaLayoutGuide.bottomAnchor, right: view.rightAnchor, height: heigthOfVIew)
    }
}

