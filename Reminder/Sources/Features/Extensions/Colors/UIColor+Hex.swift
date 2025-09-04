//
//  UIColor+Hex.swift
//  Reminder
//
//  Created by Luiz Felipe Aparecido do Couto on 31/08/25.
//

import Foundation
import UIKit

// Paleta de cores centralizadas para manter consistência visual e armazena as cores principais do app
public struct Colors {
    static let redBase = UIColor(hex: "#C02636")
    static let redLight = UIColor(hex: "#EB3C4D")
    static let blueBase = UIColor(hex: "#334FDC")
    static let blueLight = UIColor(hex: "#6E83EC")
}

// Extensão para inicializar UIColor a partir de códicos hexadecimais (hex)
extension UIColor {
    convenience init(hex: String, alpha: CGFloat = 1.0) {
        var hexSanitized = hex.trimmingCharacters(in: .whitespacesAndNewlines).uppercased()
        
        if hexSanitized.hasPrefix("#") {
            hexSanitized.remove(at: hexSanitized.startIndex)
        }
        
        var rgb: UInt64 = 0
        Scanner(string: hexSanitized).scanHexInt64(&rgb)
        
        let r = CGFloat((rgb & 0xFF0000) >> 16) / 255.0
        let g = CGFloat((rgb & 0x00FF00) >> 8) / 255.0
        let b = CGFloat(rgb & 0x0000FF) / 255.0
        
        self.init(red: r, green: g, blue: b, alpha: alpha)
    }
}
