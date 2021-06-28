//
//  ViewController.swift
//  amecalculator
//
//  Created by Alan Soares de Oliveira on 23/06/21.
//

import UIKit

private let cellID = "cellID"

class ViewController: UIViewController {
    
    // MARK: - Properties
//    let widthOfView = UIScreen.main.bounds.width
//
//    let heigthOfView = UIScreen.main.bounds.width / 4 * 5 + 12
//
//    private lazy var keyboardView = Keyboard(frame: CGRect(x: 0, y:  UIScreen.main.bounds.height - heigthOfView , width: widthOfView, height: heigthOfView))
    
    private lazy var keyboardView = Keyboard(frame: CGRect(x: 0, y:  UIScreen.main.bounds.height * 0.40, width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height * 0.60))

    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
    }
    
    // MARK: - Helpers
    
    func configureUI() {
        view.backgroundColor = .black
        
        let withOfView = UIScreen.main.bounds.width
        let heigthOfVIew = UIScreen.main.bounds.height
        
        print("DEBUG: The MainView width is \(withOfView) and heigth is \(heigthOfVIew)")
        
        view.addSubview(keyboardView)
    }
}

