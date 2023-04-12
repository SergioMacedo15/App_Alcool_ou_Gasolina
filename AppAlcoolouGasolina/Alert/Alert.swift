//
//  Alert.swift
//  AppAlcoolouGasolina
//
//  Created by Sergio Silva Macedo on 11/04/23.
//

import UIKit

class Alert {
    
    let controller: UIViewController
    
    init(controller: UIViewController) {
        self.controller = controller
    }
    
    func showAlertInformation(title: String, message: String){
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okButton = UIAlertAction(title: "OK", style: .default)
        alertController.addAction(okButton)
        controller.present(alertController, animated: true)
    }
}
