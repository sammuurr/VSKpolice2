//
//  VIewClas.swift
//  VSKpolice2
//
//  Created by Nq on 16.10.2020.
//

import UIKit

class VIewClas: UIView {

    
}
//asdfg
extension UIView {
    func makeSnapshot() -> UIImage? {
        let renderer = UIGraphicsImageRenderer(size: frame.size)
        return renderer.image { _ in drawHierarchy(in: bounds, afterScreenUpdates: true) }
    }
}
