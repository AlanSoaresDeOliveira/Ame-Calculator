//
//  Keyboard.swift
//  amecalculator
//
//  Created by Alan Soares de Oliveira on 24/06/21.
//

import UIKit

class Keyboard: UIView {
    
    // MARK: - Lifecycle
    
    
    private lazy var acButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("AC", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .systemGray4
        button.layer.borderWidth = 0.5
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private lazy var divideButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("/", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .systemOrange
        button.layer.borderWidth = 0.5
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private lazy var sevenButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("7", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .systemGray
        button.layer.borderWidth = 0.5
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private lazy var eightButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("8", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .systemGray
        button.layer.borderWidth = 0.5
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private lazy var nineButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("9", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .systemGray
        button.layer.borderWidth = 0.5
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private lazy var multipleButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("x", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .systemOrange
        button.layer.borderWidth = 0.5
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private lazy var fourButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("4", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .systemGray
        button.layer.borderWidth = 0.5
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private lazy var fiveButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("5", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .systemGray
        button.layer.borderWidth = 0.5
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private lazy var sixButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("6", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .systemGray
        button.layer.borderWidth = 0.5
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private lazy var minusButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("-", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .systemOrange
        button.layer.borderWidth = 0.5
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    private lazy var oneButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("1", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .systemGray
        button.layer.borderWidth = 0.5
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private lazy var twoButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("2", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .systemGray
        button.layer.borderWidth = 0.5
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private lazy var threeButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("3", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .systemGray
        button.layer.borderWidth = 0.5
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private lazy var plusButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("+", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .systemOrange
        button.layer.borderWidth = 0.5
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private lazy var zeroButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("0", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .systemGray
        button.layer.borderWidth = 0.5
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private lazy var dotButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle(".", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .systemGray
        button.layer.borderWidth = 0.5
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private lazy var equalButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("=", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .systemOrange
        button.layer.borderWidth = 0.5
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .black
        
        configureStacksTwo()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Helpers
    
    func configureStacksTwo() {
        
        var withOfView = widthOfCell()
        let heigthOfVIew = heigthOfCell()
        
//        if heigthOfVIew < withOfView {
//            withOfView = heigthOfVIew
//        }
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
        stackVertical.translatesAutoresizingMaskIntoConstraints = false
        stackVertical.axis = .vertical
        
        addSubview(stackVertical)
        stackVertical.fillSuperview()
        
        
    }
    
    
    func creatButtonView(button: UIButton) -> UIView {
        
//        let withOfView = widthOfCell()
//        let heigthOfVIew = heigthOfCell()
        let paddingTop = CGFloat(0)
        let paddingLeft = CGFloat(0)
        let paddingBottom = CGFloat(0)
        let paddingRight = CGFloat(0)
        let cornerRadiusView = CGFloat(0)
        
//        var differenceBetweenWidthAndHeigth = CGFloat(0)
//
//        if heigthOfVIew > withOfView {
//            differenceBetweenWidthAndHeigth = heigthOfVIew - withOfView
//            cornerRadiusView = withOfView / 2
//            paddingTop = differenceBetweenWidthAndHeigth / 2
//            paddingBottom = differenceBetweenWidthAndHeigth / 2
//
//        } else if heigthOfVIew < withOfView {
//            differenceBetweenWidthAndHeigth =  withOfView - heigthOfVIew
//            cornerRadiusView = heigthOfVIew / 2
//            paddingLeft = differenceBetweenWidthAndHeigth / 2
//            paddingRight = differenceBetweenWidthAndHeigth / 2
//
//        }
        
        let view = UIView()
        view.backgroundColor = .clear
        view.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(button)
        button.centerY(inView: view)
        button.centerX(inView: view)
        
        button.anchor(top: view.topAnchor, left: view.leftAnchor, bottom: view.bottomAnchor, right: view.rightAnchor, paddingTop: paddingTop, paddingLeft: paddingLeft, paddingBottom: paddingBottom, paddingRight: paddingRight)
        button.layer.cornerRadius = cornerRadiusView
        
        return view
    }
    
    func getPaddingsOfView() {
        
    }
    
    func widthOfCell() -> CGFloat {
        return viewWidth / 4
    }
    
    func heigthOfCell() -> CGFloat {
        return viewHeight / 5
    }
}
