//
//  UIView+Extension.swift
//  twitter-clone
//
//  Created by Kwame Agyenim - Boateng on 20/09/2021.
//
import Foundation
import UIKit

extension UIView{
    
    func anchor(top:NSLayoutYAxisAnchor? = nil,left:NSLayoutXAxisAnchor? = nil,right:NSLayoutXAxisAnchor? = nil,bottom:NSLayoutYAxisAnchor? = nil,paddingTop:CGFloat? = 0,paddingLeft:CGFloat? = 0,paddingRight:CGFloat? = 0,paddingBottom:CGFloat? = 0, width: CGFloat? = nil,height:CGFloat? = nil){
        
        translatesAutoresizingMaskIntoConstraints = false
        
        if let top = top{
            topAnchor.constraint(equalTo: top, constant: paddingTop!).isActive = true
        }
        if let left = left{
            leftAnchor.constraint(equalTo: left, constant: paddingLeft!).isActive = true
        }
        if let right = right{
            rightAnchor.constraint(equalTo: right, constant: -paddingRight!).isActive = true
        }
        if let bottom = bottom{
            bottomAnchor.constraint(equalTo: bottom, constant: -paddingBottom!).isActive = true
        }
        if let width = width{
            widthAnchor.constraint(equalToConstant: width).isActive = true
        }
        if let height = height {
            heightAnchor.constraint(equalToConstant: height).isActive = true
        }
        
    }
    
}
