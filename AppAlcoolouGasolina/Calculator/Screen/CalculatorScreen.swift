//
//  CalculatorScreen.swift
//  AppAlcoolouGasolina
//
//  Created by Sergio Silva Macedo on 08/04/23.
//

import UIKit

class CalculatorScreen: UIView {
    
    lazy var backgroundImage :UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named:"BG BLUR DARK")
        image.contentMode = .scaleAspectFit
        return image
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(backgroundImage)
        configConstranints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(code) has not been implemented")
    }

    func configConstranints(){
        NSLayoutConstraint.activate([
            backgroundImage.topAnchor.constraint(equalTo: topAnchor),
            backgroundImage.leadingAnchor.constraint(equalTo: leadingAnchor),
            backgroundImage.trailingAnchor.constraint(equalTo: trailingAnchor),
            backgroundImage.bottomAnchor.constraint(equalTo: bottomAnchor),
        
        ])
    }
}
