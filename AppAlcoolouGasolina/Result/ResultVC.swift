//
//  ResultVC.swift
//  AppAlcoolouGasolina
//
//  Created by Sergio Silva Macedo on 11/04/23.
//

import UIKit

class ResultVC: UIViewController {

    var screen : ResultScreen?
    
    override func loadView() {
        screen = ResultScreen()
        view = screen
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
    }


}
