//
//  LoginBottomSheelView.swift
//  Reminder
//
//  Created by Luiz Felipe Aparecido do Couto on 04/09/25.
//

import Foundation
import UIKit

class LoginBottomSheelView: UIView {
    public weak var delegate: LoginBottomSheetViewDelegate?
    
    private let titleLabel: UILabel = {
        let label = UILabel()
        label.text = "login.label.title".localized
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = Colors.Neutral.gray100
        label.font = Typography.subHeading
        return label
    }()
    
    private let loginTitleEmail: UILabel = {
        let label = UILabel()
        label.text = "login.email.label.title".localized
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = Colors.Neutral.gray100
        label.font = Typography.body
        return label
    }()
    
    private let emailTextField: UITextField = {
        let text = UITextField()
        text.placeholder = "login.email.placeholder".localized
        text.borderStyle = .roundedRect
        text.translatesAutoresizingMaskIntoConstraints = false
        text.layer.borderColor = Colors.Neutral.gray400.withAlphaComponent(0.5).cgColor
        text.layer.borderWidth = 1.0
        text.layer.cornerRadius = 8
        return text
    }()
    
    private let passwordTextFieldLabel: UILabel = {
        let label = UILabel()
        label.text = "login.password.label.title".localized
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = Colors.Neutral.gray100
        label.font = Typography.body
        return label
    }()
    
    private let passwordTextField: UITextField = {
        let text = UITextField()
        text.isSecureTextEntry = true
        text.translatesAutoresizingMaskIntoConstraints = false
        text.borderStyle = .roundedRect
        text.layer.borderColor = Colors.Neutral.gray400.withAlphaComponent(0.5).cgColor
        text.layer.borderWidth = 1.0
        text.layer.cornerRadius = 8
        return text
    }()
    
    private let loginButton: UIButton = {
        let button = UIButton(type: .system )
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("login.button.title".localized, for: .normal)
        button.addTarget(self, action: #selector(loginButtonDidTapeed), for: .touchUpInside)
        button.backgroundColor = Colors.Brand.redBase
        button.layer.cornerRadius = Metrics.medium
        button.setTitleColor(Colors.Neutral.gray800, for: .normal)
        button.titleLabel?.font = Typography.subHeading
        return button
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupUI()
        
        let exampleGest = UITapGestureRecognizer(target: self, action: #selector(exampleTaped))
        
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @objc
    private func exampleTaped() {
        print("clicou na label")
    }
    
    
    
    
    private func setupUI() {
        self.backgroundColor = .white
        self.layer.cornerRadius = Metrics.small
        
        addSubview(titleLabel)
        addSubview(loginTitleEmail)
        addSubview(emailTextField)
        addSubview(passwordTextFieldLabel)
        addSubview(passwordTextField)
        addSubview(loginButton)
        
        setupConstraints()
    }
    
    private func setupConstraints() {
        NSLayoutConstraint.activate([
            
            titleLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: Metrics.huge),
            titleLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: Metrics.medium),
            
            loginTitleEmail.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: Metrics.medium),
            loginTitleEmail.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: Metrics.medium),
            
            emailTextField.topAnchor.constraint(equalTo: loginTitleEmail.bottomAnchor, constant: Metrics.small),
            emailTextField.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: Metrics.medium),
            emailTextField.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -Metrics.medium),
            emailTextField.heightAnchor.constraint(equalToConstant: Metrics.labelSize),
            
            passwordTextFieldLabel.topAnchor.constraint(equalTo: emailTextField.bottomAnchor, constant: Metrics.medium),
            passwordTextFieldLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: Metrics.medium),
            
            passwordTextField.topAnchor.constraint(equalTo: passwordTextFieldLabel.bottomAnchor, constant: Metrics.medium),
            passwordTextField.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: Metrics.medium),
            passwordTextField.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -Metrics.medium),
            passwordTextField.heightAnchor.constraint(equalToConstant: Metrics.labelSize),
            
            loginButton.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: Metrics.medium),
            loginButton.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -Metrics.medium),
            loginButton.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -Metrics.huge),
            loginButton.heightAnchor.constraint(equalToConstant: Metrics.buttonSize)
        ])
    }
    
    @objc
    private func loginButtonDidTapeed() {
        let user = emailTextField.text ?? ""
        let password = passwordTextField.text ?? ""
        delegate?.sendLoginData(user: user, password: password)
    }
    
}
