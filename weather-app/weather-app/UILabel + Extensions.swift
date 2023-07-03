//
//  UILabel + Extensions.swift
//  weather-app
//
//  Created by Элина Абдрахманова on 03.07.2023.
//

import UIKit

extension UILabel {
    convenience init(text: String, font: UIFont?, color: UIColor?) {
        self.init()
        
        self.text = text
        self.textColor = color
        self.font = font
        self.minimumScaleFactor = 0.5
        self.adjustsFontSizeToFitWidth = true
        self.translatesAutoresizingMaskIntoConstraints = false
    }
}
