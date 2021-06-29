//
//  UIButton+Extensions.swift
//  amecalculator
//
//  Created by Alan Soares de Oliveira on 29/06/21.
//

import UIKit

extension UIButton {
    
    static func createKeyboardButton(title: String, backgroundColor: UIColor) -> UIButton {
        let button = UIButton(type: .system)
        button.setTitle(title, for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 32)
        button.backgroundColor = backgroundColor
        button.layer.borderWidth = 0.5
        return button
    }
}
