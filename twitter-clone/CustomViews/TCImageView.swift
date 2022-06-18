//
//  TCImageView.swift
//  twitter-clone
//
//  Created by Kwame Agyenim - Boateng on 20/09/2021.
//

import UIKit

class TCImageView: UIImageView {
    let twitterLogo =  UIImage(named: "Twitter-Logo")?.withRenderingMode(.alwaysOriginal)

    override init(frame: CGRect) {
        super.init(frame: frame)
        setupImage()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
  
    private func setupImage(){
        translatesAutoresizingMaskIntoConstraints = false
        image = twitterLogo
        contentMode = .scaleToFill
        clipsToBounds = true
    }
    
}
