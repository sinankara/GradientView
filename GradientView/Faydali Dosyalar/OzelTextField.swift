//
//  OzelTextField.swift
//  iclnfs
//
//  Created by Sinan Kara on 30.10.2020.
//

import Foundation
import UIKit


class OzelTextField: UITextField {
    let padding: CGFloat
    let yukseklik: CGFloat
    
    
    init(padding: CGFloat, yukseklik: CGFloat, background: UIColor, placeHolderd: String, textAlign: NSTextAlignment, cornerRadius: CGFloat? = 1) {
        self.padding = padding
        self.yukseklik = yukseklik
        
        super.init(frame: .zero)
        layer.cornerRadius = 5
        backgroundColor = background
        placeholder = placeHolderd
        textAlignment = textAlign
        layer.cornerRadius = cornerRadius!
        clipsToBounds = true
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    override var intrinsicContentSize: CGSize {
        return .init(width: 0, height: yukseklik)
    }
    
    override func textRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.insetBy(dx: padding, dy: 0)
    }
    
    override func editingRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.insetBy(dx: padding, dy: 0)
    }
}
