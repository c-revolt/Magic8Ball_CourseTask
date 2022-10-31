//
//  ViewController.swift
//  Magic8Ball_CourseTask
//
//  Created by Александр Прайд on 31.10.2022.
//

import UIKit

class MainViewController: UIViewController {
    
    //MARK: - Properties
    
    private let titleLabel: UILabel = {
        let label = UILabel()
        label.text = "Спроси меня..."
        label.textColor = .black
        label.textAlignment = .center
        label.font = UIFont(name: "Times New Roman", size: 32)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let ballImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: K.ball1)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    private let askButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Спросить", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .black
        button.layer.cornerRadius = 10
        button.layer.shadowColor = UIColor.black.cgColor
        button.layer.shadowOffset = CGSize(width: 0.0, height: 2.0)
        button.layer.shadowOpacity = 0.2
        button.layer.shadowRadius = 2
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()


    // MARK: - Lifcycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = #colorLiteral(red: 0.5501046777, green: 0.9138562083, blue: 0.9441761374, alpha: 1)
        
        viewHierarche()
        applyConstraints()
        
    }
    
    
    // MARK: - Subviews
    private func viewHierarche() {
        view.addSubview(titleLabel)
        view.addSubview(ballImageView)
        view.addSubview(askButton)
    }
    
    // MARK: - Layout
    private func applyConstraints() {
        
        
        NSLayoutConstraint.activate([
        
            titleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            titleLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 100)
        ])
        
        NSLayoutConstraint.activate([
            ballImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            ballImageView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            ballImageView.heightAnchor.constraint(equalToConstant: 240),
            ballImageView.widthAnchor.constraint(equalToConstant: 250)
        ])
        
        NSLayoutConstraint.activate([
        
            askButton.heightAnchor.constraint(equalToConstant: 56),
            askButton.widthAnchor.constraint(equalToConstant: 250),
            askButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            askButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -60)
            
        ])
    }


}

