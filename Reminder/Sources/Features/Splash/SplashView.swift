//
//  SplashView.swift
//  Reminder
//
//  Created by Luiz Felipe Aparecido do Couto on 31/08/25.
//

import Foundation
import UIKit

class SplashView: UIView {
    
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
    
    private func setupUI() {
        self.backgroundColor = Colors.redBase
        self.addSubview(logoImageView)
        
        setupConstraints()
    }
    
    private func setupConstraints() {
        NSLayoutConstraint.activate([
            logoImageView.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            logoImageView.centerYAnchor.constraint(equalTo: self.centerYAnchor, constant: -Metrics.medium)

        ])
        
    }
    
}
