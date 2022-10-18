//
//  ViewCell.swift
//  TenHomeWork
//
//  Created by Александр Меренков on 17.10.2022.
//

import UIKit

class ViewCell: UITableViewCell {
    
//    MARK: - Proterties
    
    static let identifire = "tableCell"
    private let flagImageView: UIImageView = {
        let iv = UIImageView()
        return iv
    }()
    private let countryNameLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.boldSystemFont(ofSize: 17)
        return label
    }()
    
//    MARK: - Lifecycle
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        addSubview(flagImageView)
        flagImageView.translatesAutoresizingMaskIntoConstraints = false
        flagImageView.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        flagImageView.leftAnchor.constraint(equalTo: leftAnchor, constant: 10).isActive = true
        flagImageView.heightAnchor.constraint(equalToConstant: 25).isActive = true
        flagImageView.widthAnchor.constraint(equalToConstant: 25).isActive = true
        
        addSubview(countryNameLabel)
        countryNameLabel.translatesAutoresizingMaskIntoConstraints = false
        countryNameLabel.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        countryNameLabel.leftAnchor.constraint(equalTo: flagImageView.rightAnchor, constant: 15).isActive = true
        backgroundColor = .white
    }
    
//    MARK: - Helpers
    
    func setTextLabel(_ country: Country) {
        flagImageView.image = UIImage(named: country.flag)
        countryNameLabel.text = country.title
    }
}
