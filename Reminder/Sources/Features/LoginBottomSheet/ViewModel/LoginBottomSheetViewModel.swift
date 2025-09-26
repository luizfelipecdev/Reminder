//
//  LoginBottomSheetViewModel.swift
//  Reminder
//
//  Created by Luiz Felipe Aparecido do Couto on 23/09/25.
//

import Foundation
import Firebase

class LoginBottomSheetViewModel {
    func doAuth(usernameLogin: String, password: String) {
        print(usernameLogin)
        Auth.auth().signIn(withEmail: usernameLogin, password: password) { [weak self] (authResult, error) in
            if let error = error {
                print("Autenticacao nao foi com sucesso \(error)")
            } else {
                print(authResult, "Sucesso na autenticacao")
            }
        }
    }
}
