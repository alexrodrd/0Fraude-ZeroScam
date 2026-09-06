//
//  UITextField+OfraudeStyle.swift
//  PrototipoApp
//

import UIKit

extension UITextField {
    func applyOfraudeStyle() {
        backgroundColor = UIColor(red: 15/255, green: 26/255, blue: 56/255, alpha: 1)
        layer.borderColor = UIColor(red: 42/255, green: 55/255, blue: 104/255, alpha: 1).cgColor
        layer.borderWidth = 1
        layer.cornerRadius = 8
        textColor = UIColor(red: 219/255, green: 225/255, blue: 255/255, alpha: 1)
        font = .systemFont(ofSize: 15)
        tintColor = UIColor(red: 245/255, green: 166/255, blue: 35/255, alpha: 1)

        if let placeholder {
            attributedPlaceholder = NSAttributedString(
                string: placeholder,
                attributes: [.foregroundColor: UIColor(red: 156/255, green: 163/255, blue: 175/255, alpha: 1)]
            )
        }

        let padding = UIView(frame: CGRect(x: 0, y: 0, width: 13, height: 48))
        leftView = padding
        leftViewMode = .always
    }
}
