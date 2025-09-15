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
        setupGesture()

        //Ciclo de decisão se vai para o login ou para o menu
        setup()
    }
    
    // Adiciona a view e esconde a Navigation Bar
    private func setup() {
        self.view.addSubview(contentView)
        self.navigationController?.isNavigationBarHidden = true
        self.view.backgroundColor = Colors.Brand.redBase
        setupConstraints()
    }
    
    // Ajusta a contentView para ocupar a tela toda
    private func setupConstraints() {
        contentView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            contentView.topAnchor.constraint(equalTo: view.topAnchor),
            contentView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            contentView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            contentView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
        ])
    }
    
    private func setupGesture() {
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(showLoginBottomSheet))
        self.view.addGestureRecognizer(tapGesture)
    }
    
    @objc
    private func showLoginBottomSheet() {
        let loginBottomSheet = LoginBottomSheetViewController()
        loginBottomSheet.modalPresentationStyle = .overCurrentContext
        loginBottomSheet.modalTransitionStyle = .crossDissolve
        self.present(loginBottomSheet, animated: false){
            loginBottomSheet.animateShow()
        }

    }
    
}
