//
//  HomeScreen.swift
//  AppAlcoolouGasolina
//
//  Created by Sergio Silva Macedo on 07/04/23.
//

import UIKit

class HomeScreen: UIView {
    
    lazy var backgroundImageView: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "BG HOME")
        image.contentMode = .scaleAspectFit
        return image
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(backgroundImageView)
        configConstraints()
    }

    required init?(coder: NSCoder) {
        fatalError("Init(coder: has not been implemented")
    }
    
    private func configConstraints(){
        NSLayoutConstraint.activate([
            backgroundImageView.topAnchor.constraint(equalTo: topAnchor),
            backgroundImageView.leadingAnchor.constraint(equalTo: leadingAnchor),
            backgroundImageView.trailingAnchor.constraint(equalTo: trailingAnchor ),
            backgroundImageView.bottomAnchor.constraint(equalTo: bottomAnchor)
            
        ])
    }
}
