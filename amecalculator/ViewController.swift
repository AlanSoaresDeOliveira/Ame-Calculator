//
//  ViewController.swift
//  amecalculator
//
//  Created by Alan Soares de Oliveira on 23/06/21.
//

import UIKit

private let cellID = "cellID"

class ViewController: UIViewController {
    
    
    private lazy var colletionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
//        layout.scrollDirection = .horizontal
        let cv = UICollectionView(frame: .zero, collectionViewLayout: layout)
        cv.delegate = self
        cv.dataSource = self
        cv.backgroundColor = .white
        cv.register(UICollectionViewCell.self, forCellWithReuseIdentifier: cellID)
        cv.translatesAutoresizingMaskIntoConstraints = false
        return cv
    }()
    
    
    private let viewKeyBoard: UIView = {
        let uv = UIView(frame: CGRect(x: 0, y:  UIScreen.main.bounds.height * 0.30, width: UIScreen.main.bounds.width, height:  UIScreen.main.bounds.height * 0.70))
        uv.backgroundColor = .systemBlue
        return uv
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureTableView()
        configureUI()
    }
    
    
    func configureUI() {
        view.backgroundColor = .systemGroupedBackground
        
//        view.addSubview(viewKeyBoard)
        
        viewKeyBoard.addSubview(colletionView)
        
        colletionView.topAnchor.constraint(equalTo: viewKeyBoard.topAnchor).isActive = true
        colletionView.leadingAnchor.constraint(equalTo: viewKeyBoard.leadingAnchor).isActive = true
        colletionView.bottomAnchor.constraint(equalTo: viewKeyBoard.bottomAnchor).isActive = true
        colletionView.trailingAnchor.constraint(equalTo: viewKeyBoard.trailingAnchor).isActive = true
        
        view.addSubview(viewKeyBoard)
//        colletionView.topAnchor.constraint(equalTo: viewKeyBoard.topAnchor).isActive = true
//        colletionView.leadingAnchor.constraint(equalTo: viewKeyBoard.leadingAnchor).isActive = true
//        colletionView.bottomAnchor.constraint(equalTo: viewKeyBoard.bottomAnchor).isActive = true
//        colletionView.trailingAnchor.constraint(equalTo: viewKeyBoard.trailingAnchor).isActive = true
    }
    
    func configureTableView() {
//        buttonTableView.translatesAutoresizingMaskIntoConstraints = false
//        buttonTableView.register(UITableViewCell.self, forCellReuseIdentifier: cellID)
    }
}

extension ViewController: UICollectionViewDataSource {
    public func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        100
    }
    
    public func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellID, for: indexPath)
        cell.backgroundColor = .red
        return cell
    }
    
    
}

extension ViewController: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 50, height: 80)
    }
}


