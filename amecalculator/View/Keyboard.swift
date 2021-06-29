//
//  Keyboard.swift
//  amecalculator
//
//  Created by Alan Soares de Oliveira on 24/06/21.
//

import UIKit

class Keyboard: UIView {
    
    // MARK: - Properties
    
    private lazy var acButton: UIButton = .createKeyboardButton(title: "AC", backgroundColor: .systemGray3)
    private lazy var divideButton: UIButton = .createKeyboardButton(title: "/", backgroundColor: .systemOrange)
    private lazy var sevenButton: UIButton = .createKeyboardButton(title: "7", backgroundColor: .systemGray)
    private lazy var eightButton: UIButton = .createKeyboardButton(title: "8", backgroundColor: .systemGray)
    private lazy var nineButton: UIButton = .createKeyboardButton(title: "9", backgroundColor: .systemGray)
    private lazy var multipleButton: UIButton = .createKeyboardButton(title: "X", backgroundColor: .systemOrange)
    private lazy var fourButton: UIButton = .createKeyboardButton(title: "4", backgroundColor: .systemGray)
    private lazy var fiveButton: UIButton = .createKeyboardButton(title: "5", backgroundColor: .systemGray)
    private lazy var sixButton: UIButton = .createKeyboardButton(title: "6", backgroundColor: .systemGray)
    private lazy var minusButton: UIButton = .createKeyboardButton(title: "-", backgroundColor: .systemOrange)
    private lazy var oneButton: UIButton = .createKeyboardButton(title: "1", backgroundColor: .systemGray)
    private lazy var twoButton: UIButton = .createKeyboardButton(title: "2", backgroundColor: .systemGray)
    private lazy var threeButton: UIButton = .createKeyboardButton(title: "3", backgroundColor: .systemGray)
    private lazy var plusButton: UIButton = .createKeyboardButton(title: "+", backgroundColor: .systemOrange)
    private lazy var zeroButton: UIButton = .createKeyboardButton(title: "0", backgroundColor: .systemGray)
    private lazy var dotButton: UIButton = .createKeyboardButton(title: ".", backgroundColor: .systemGray)
    private lazy var equalButton: UIButton = .createKeyboardButton(title: "=", backgroundColor: .systemOrange)
    
    // MARK: - Lifecycle
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.frame = CGRect(x: 0, y:  0, width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height * 0.60)
        backgroundColor = .black
        
        configureStacksViewLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Helpers
    
    func configureStacksViewLayout() {
        
        let withOfView = widthOfCell()
        let heigthOfVIew = heigthOfCell()
        
        divideButton.setWidth(withOfView)
        let acButtonView = creatButtonView(button: acButton)
        let divideButtonView = creatButtonView(button: divideButton)
        let firstStack = UIStackView(arrangedSubviews: [acButtonView, divideButtonView])
        firstStack.distribution = .fillProportionally
        firstStack.setHeight(heigthOfVIew)
        
        let seventhButtonView = creatButtonView(button: sevenButton)
        let eightButtonView = creatButtonView(button: eightButton)
        let ninethButtonView = creatButtonView(button: nineButton)
        let multipleButtonView = creatButtonView(button: multipleButton)
        let secondStack = UIStackView(arrangedSubviews: [seventhButtonView, eightButtonView, ninethButtonView, multipleButtonView])
        secondStack.distribution = .fillEqually
        secondStack.setHeight(heigthOfVIew)
        
        let fourthButtonView = creatButtonView(button: fourButton)
        let fivethButtonView = creatButtonView(button: fiveButton)
        let sixthButtonView = creatButtonView(button: sixButton)
        let minusButtonView = creatButtonView(button: minusButton)
        let thirdStack = UIStackView(arrangedSubviews: [fourthButtonView, fivethButtonView, sixthButtonView, minusButtonView])
        thirdStack.distribution = .fillEqually
        thirdStack.setHeight(heigthOfVIew)
        
        let firstButtonView = creatButtonView(button: oneButton)
        let secondButtonView = creatButtonView(button: twoButton)
        let thirdButtonView = creatButtonView(button: threeButton)
        let plusButtonView = creatButtonView(button: plusButton)
        let fourthStack = UIStackView(arrangedSubviews: [firstButtonView, secondButtonView, thirdButtonView, plusButtonView])
        fourthStack.distribution = .fillEqually
        fourthStack.setHeight(heigthOfVIew)
        
        dotButton.setWidth(withOfView)
        equalButton.setWidth(withOfView)
        let zeroButtonView = creatButtonView(button: zeroButton)
        let dotButtonView = creatButtonView(button: dotButton)
        let equalButtonView = creatButtonView(button: equalButton)
        let fivethStack = UIStackView(arrangedSubviews: [zeroButtonView, dotButtonView, equalButtonView])
        fivethStack.distribution = .fillProportionally
        fivethStack.setHeight(heigthOfVIew)
        
        let stackVertical = UIStackView(arrangedSubviews: [firstStack, secondStack, thirdStack, fourthStack, fivethStack])
        stackVertical.axis = .vertical
        
        addSubview(stackVertical)
        stackVertical.anchor(top: topAnchor, left: leftAnchor, bottom: bottomAnchor, right: rightAnchor)
    }
    
    
    func creatButtonView(button: UIButton) -> UIView {
        let paddingTop = CGFloat(0)
        let paddingLeft = CGFloat(0)
        let paddingBottom = CGFloat(0)
        let paddingRight = CGFloat(0)
        
        let view = UIView()
        view.backgroundColor = .clear
        view.addSubview(button)
        
        button.centerY(inView: view)
        button.centerX(inView: view)
        button.anchor(top: view.topAnchor, left: view.leftAnchor, bottom: view.bottomAnchor, right: view.rightAnchor, paddingTop: paddingTop, paddingLeft: paddingLeft, paddingBottom: paddingBottom, paddingRight: paddingRight)
        
        return view
    }
    
    func widthOfCell() -> CGFloat {
        return viewWidth / 4
    }
    
    func heigthOfCell() -> CGFloat {
        return viewHeight / 5
    }
}
