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
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.setNavigationBarHidden(true, animated: false)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        screnn?.delegate(delegate: self)
    }
}

extension HomeVC: HomeScreenDelegate {
    func tappedStartButton() {
        let vc = CalculatorVC()
        navigationController?.pushViewController(vc, animated: true)
    }
}

