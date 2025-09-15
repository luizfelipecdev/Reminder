//
//  String+Ext.swift
//  Reminder
//
//  Created by Luiz Felipe Aparecido do Couto on 14/09/25.
//

import Foundation

extension String{
    var localized: String {
        NSLocalizedString(self, comment: "")
    }
}
