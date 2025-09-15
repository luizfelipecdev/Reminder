//
//  SplashView.swift
//  Reminder
//
//  Created by Luiz Felipe Aparecido do Couto on 31/08/25.
//

import Foundation
import UIKit

// View da tela de Splash (logo e fundo)
class SplashView: UIView {
    
    // Carrega a logo do App
    private let logoImageView: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "Logo")
        image.contentMode = .scaleAspectFit
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
        
    }()
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    // Configura UI inicial (cor de fundo, logo, etc.)
    private func setupUI() {
        self.backgroundColor = Colors.Brand.redBase
        self.addSubview(logoImageView)
        
        setupConstraints()
    }
    
    
    // Define as constraints de layout da Splash e aplica Auto Layout para centralizar o logo
    private func setupConstraints() {
        NSLayoutConstraint.activate([
            logoImageView.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            logoImageView.centerYAnchor.constraint(equalTo: self.centerYAnchor, constant: -Metrics.medium)
            
        ])
        
    }
    
}
