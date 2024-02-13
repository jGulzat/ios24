//
//  MakerView.swift
//  lesson1
//
//  Created by Gulzat Zheenbek kyzy on 13/2/24.
//

import UIKit

class MakerView {
    
    func makerLabel(text: String,
                    size: CGFloat = 12,
                    weight: UIFont.Weight = .regular,
                    textColor: UIColor = .black,
                    backgroundColor: UIColor = .clear,
                    textAlignment: NSTextAlignment = .left,
                    numberOfLines: Int = 1,
                    lineBreakMode: NSLineBreakMode = .byWordWrapping,
                    translatesAutoresizingMaskIntoConstraints: Bool = false
    ) -> UILabel {
        let label = UILabel()
        label.text = text
        label.font = .systemFont(ofSize: size, weight: weight)
        label.textColor = textColor
        label.backgroundColor = backgroundColor
        label.textAlignment = textAlignment
        label.numberOfLines = numberOfLines
        label.lineBreakMode = lineBreakMode
        label.translatesAutoresizingMaskIntoConstraints = translatesAutoresizingMaskIntoConstraints
        return label
    }
    
    func makerTextField(
        textColor: UIColor = .black,
        placeholder: String = "Fill the field",
        cornerRadius: CGFloat = 16,
        backgroundColor: UIColor = .clear,
        borderColor: UIColor = .red,
        borderWidth: CGFloat = 0,
        translatesAutoresizingMaskIntoConstraints: Bool = false
    ) ->  UITextField {
        let tf = UITextField()
        tf.placeholder = placeholder
        tf.layer.cornerRadius = cornerRadius
        tf.backgroundColor = backgroundColor
        tf.layer.borderColor = borderColor.cgColor
        
        tf.layer.borderWidth = borderWidth
        tf.textColor = textColor
        tf.translatesAutoresizingMaskIntoConstraints = translatesAutoresizingMaskIntoConstraints
        return tf
    }
}
