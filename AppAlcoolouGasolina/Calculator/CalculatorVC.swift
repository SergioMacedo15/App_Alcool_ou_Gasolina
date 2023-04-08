//
//  CalculatorVC.swift
//  AppAlcoolouGasolina
//
//  Created by Sergio Silva Macedo on 08/04/23.
//

import UIKit

class CalculatorVC: UIViewController {

    
    var screen: CalculatorScreen?
    
    override func loadView() {
        screen = CalculatorScreen()
        view = screen
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    


}
