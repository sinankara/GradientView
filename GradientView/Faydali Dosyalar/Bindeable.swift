//
//  Bindeable.swift
//  tryICLNFS
//
//  Created by Sinan Kara on 3.11.2020.
//

import Foundation



class Bindable<K> {
    var deger : K? {
        didSet {
            gozlemci?(deger)
        }
    }
    
    var gozlemci: ((K?) ->())?
    
    func degerAta(gozlemci: @escaping (K?) -> ()) {
        self.gozlemci = gozlemci
    }
}
