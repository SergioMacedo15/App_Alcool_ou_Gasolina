//
//  CalculatorVC.swift
//  AppAlcoolouGasolina
//
//  Created by Sergio Silva Macedo on 08/04/23.
//

import UIKit

class CalculatorVC: UIViewController {
    
    var screen: CalculatorScreen?
    var alert : Alert?
    override func loadView() {
        screen = CalculatorScreen()
        view = screen
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        alert = Alert(controller: self)
        screen?.delegate(delegate: self)
    }
    
    func validateTextField()-> Bool {
        
        guard let ethanolPrice = screen?.ethanolPriceTextField.text else {return false}
        guard let gasPrice = screen?.gasPriceTextField.text else {return false}
        if  gasPrice.isEmpty && ethanolPrice.isEmpty{
            alert?.showAlertInformation(title: "Atenção", message: "Nenhum Valor informado")
            return false
        }else if  gasPrice.isEmpty {
            alert?.showAlertInformation(title: "Atenção", message: "Informe os valores da Gasolina")
            return false
        }else if ethanolPrice.isEmpty {
            alert?.showAlertInformation(title: "Atenção", message: "Informe os valores do Álcool")
            return false
        }
        return true
    }

}

extension CalculatorVC: CalculateScreenDelegate {
  
    func tappedCalculateButton() {
        
        
        
        
        if validateTextField(){
            let formatter = NumberFormatter()
            formatter.numberStyle = .decimal
            
            let ethanolPrice : Double = (formatter.number(from: screen?.ethanolPriceTextField.text ?? "0.0") as? Double) ?? 0.0
            let gasPrice : Double = (formatter.number(from: screen?.gasPriceTextField.text ?? "0.0") as? Double) ?? 0.0
            
            
            if ethanolPrice / gasPrice > 0.7 {
                print("Melhor Usar Gasolina")
            } else {
                print("Melhor Usar Etanol")
            }
        }
    }
    
    func tappedBackButton() {
        navigationController?.popViewController(animated: true)
    }
}
