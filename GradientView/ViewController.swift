//
//  ViewController.swift
//  GradientView
//
//  Created by Sinan Kara on 9.02.2021.
//

import UIKit

class ViewController: UIViewController {

    
    let colorTopp: UIColor = #colorLiteral(red: 0.2901960784, green: 0.3019607843, blue: 0.8470588235, alpha: 1)
    let colorBottomm: UIColor = #colorLiteral(red: 0.1725490196, green: 0.831372549, blue: 0.8470588235, alpha: 1)
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        
        
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [colorTopp.cgColor, colorBottomm.cgColor]
        gradientLayer.startPoint = CGPoint(x: 0, y: 0)
        gradientLayer.endPoint = CGPoint(x: 1, y: 1)
        gradientLayer.frame = view.bounds
        view.layer.insertSublayer(gradientLayer, at: 0)
        
        
    }


}

