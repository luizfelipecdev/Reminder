//
//  SplashViewController.swift
//  Reminder
//
//  Created by Luiz Felipe Aparecido do Couto on 31/08/25.
//

import Foundation
import UIKit


// Controller responsável pela tela de Splash
class SplashViewController: UIViewController {
    let contentView = SplashView()
    
    // Chama o setup inicial
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setup()
    }
    
    // Adiciona a view e esconde a Navigation Bar
    private func setup() {
        self.view.addSubview(contentView)
        self.navigationController?.isNavigationBarHidden = true
        
        setupConstraints()
    }
    
    // Ajusta p contentView para ocupar a tela toda
    private func setupConstraints() {
        NSLayoutConstraint.activate([
            
            contentView.topAnchor.constraint(equalTo: view.topAnchor),
            contentView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            contentView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            contentView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
        ])
        
        contentView.translatesAutoresizingMaskIntoConstraints = false
        
    }
}
