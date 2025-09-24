//
//  LoginBottomSheetViewDelegate.swift
//  Reminder
//
//  Created by Luiz Felipe Aparecido do Couto on 19/09/25.
//

import Foundation
import UIKit

protocol LoginBottomSheetViewDelegate: AnyObject {
    func sendLoginData(user: String, password: String)
}
