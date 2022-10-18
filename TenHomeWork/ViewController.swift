//
//  ViewController.swift
//  TenHomeWork
//
//  Created by Александр Меренков on 17.10.2022.
//

import UIKit

class ViewController: UIViewController {
    
//    MARK: - Outlets
    
    @IBOutlet weak var tabelView: UITableView!
    
//    MARK: - Properties
    private let france = Country(title: "Франция", flag: "france.png", capital: "Париж", population: 67.39, square: 543.94)
    private let italy = Country(title: "Италия", flag: "italy.png", capital: "Рим", population: 59.55, square: 301.23)
    private let germany = Country(title: "Германия", flag: "germany.png", capital: "Берлин", population: 83.24, square: 357.588)
    private let britain = Country(title: "Великобритания", flag: "united-kingdom.png", capital: "Лондон", population: 67.22, square: 243.61)
    private let netherlands = Country(title: "Нидерланды", flag: "netherlands.png", capital: "Амстердам", population: 17.44, square: 41.543)
    
    private var countryArray  = [Country]()

//    MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        countryArray = [france, italy, germany, britain, netherlands]
        
        tabelView.dataSource = self
        tabelView.delegate = self
    }
}

//  MARK: - Extensions

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return countryArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: ViewCell.identifire) as? ViewCell else { return ViewCell() }
        cell.setTextLabel(countryArray[indexPath.row])
        return cell
    }
    
//    MARK: - Actions
    
    @IBAction func unwindToView(_ unwindSegue: UIStoryboardSegue) {
        let _ = unwindSegue.source
    }
}

extension ViewController: UITableViewDelegate {
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetail" {
                if let indexPath = tabelView.indexPathForSelectedRow {
                    if let vc = segue.destination as? DetailedViewController {
                        vc.modalPresentationStyle = .fullScreen
                        vc.selectedCountry = countryArray[indexPath.row]
                        present(vc, animated: true)
                    }
                }
        }
    }
}

