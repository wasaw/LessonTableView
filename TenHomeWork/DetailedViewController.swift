//
//  DetailedViewController.swift
//  TenHomeWork
//
//  Created by Александр Меренков on 18.10.2022.
//

import UIKit

class DetailedViewController: UIViewController {
    
//    MARK: - Properties
    
    var selectedCountry = Country(title: "", flag: "", capital: "", population: 0, square: 0)
    
    private let titleLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.boldSystemFont(ofSize: 24)
        label.textColor = .purple
        return label
    }()
    
    private let capitalLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 20)
        return label
    }()
    
    private let populationLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 20)
        return label
    }()
    
    private let squareLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 20)
        return label
    }()
    
//    MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureUI()
        setValue()
        view.backgroundColor = .white
    }
    
//    MARK: - Helpers
    
    private func configureUI() {
        let stack = UIStackView(arrangedSubviews: [titleLabel, capitalLabel, populationLabel, squareLabel])
        stack.axis = .vertical
        stack.distribution = .equalSpacing
        
        view.addSubview(stack)
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        stack.topAnchor.constraint(equalTo: view.topAnchor, constant: 70).isActive = true
        stack.heightAnchor.constraint(equalToConstant: 120).isActive = true
    }
    
    private func setValue() {
        titleLabel.text = selectedCountry.title
        capitalLabel.text = "Столица: " + selectedCountry.capital
        populationLabel.text = "Население: " + String(selectedCountry.population) + " млн."
        squareLabel.text = "Общая площадь: " + String(selectedCountry.square) + " кв. км"
    }
}
