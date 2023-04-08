//
//  HomeVC.swift
//  AppAlcoolouGasolina
//
//  Created by Sergio Silva Macedo on 07/04/23.
//

import UIKit

class HomeVC: UIViewController {

    var screnn : HomeScreen?
    
    override func loadView() {
        screnn = HomeScreen()
        view = screnn
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }


}

