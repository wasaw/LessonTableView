//
//  Extansions.swift
//  TenHomeWork
//
//  Created by Александр Меренков on 18.10.2022.
//

import UIKit

//  MARK: - UIViewController

extension UIViewController {
    static var id: String {
        return String(describing: Self.self)
    }
    
    static func getVC(_ sb: String = "Main") -> UIViewController? {
        let storyboard = UIStoryboard(name: sb, bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: id)
        return vc
    }
}

