//
//  ViewController.swift
//  twitter-clone
//
//  Created by Kwame Agyenim - Boateng on 20/09/2021.
//

import UIKit

class WelcomeViewController: UIViewController {

//    MARK:- UI Elements
    var scrollView : UIScrollView = {
       var scrollView = UIScrollView()
        scrollView.showsVerticalScrollIndicator = false
        return scrollView
    }()
   
    var logo = TCImageView(frame: .zero)
    var headingLabel = UILabel()
    var googleBtn = UIButton()
    var appleBtn = UIButton()
    var signupBtn = UIButton()
    var separator = UIView()
    var separatorLabel = UILabel()
    var loginLabel = UILabel()
    var loginbtn = UIButton()
    var loginStackView = UIStackView()
   
    
    override func loadView() {
        super.loadView()
        [logo,headingLabel,googleBtn,appleBtn,signupBtn,loginStackView,loginbtn,loginLabel,scrollView,separatorLabel].forEach { item in
            view.addSubview(item)
            item.translatesAutoresizingMaskIntoConstraints = false
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        styleElement()
        setupContraints()
        view.backgroundColor = UIColor(red: 0.14, green: 0.20, blue: 0.28, alpha: 1.00)
       
    }
    
//  MARK:-  constraints
    func setupContraints(){
        logo.anchor(top: view.layoutMarginsGuide.topAnchor, paddingTop: 20, width: 42, height: 25)
        logo.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        scrollView.anchor(top: logo.bottomAnchor, left: view.leftAnchor, right: view.rightAnchor, bottom: view.layoutMarginsGuide.bottomAnchor)
        
        headingLabel.anchor(top: logo.bottomAnchor, left: view.leftAnchor, right: view.rightAnchor, paddingTop: 120, paddingLeft: 30, paddingRight: 30)
        
        
        googleBtn.anchor(left: view.leftAnchor, right: view.rightAnchor, bottom: view.layoutMarginsGuide.bottomAnchor,paddingTop: 40, paddingLeft: 30, paddingRight: 30,paddingBottom: 260, height: 60)
        appleBtn.anchor(top:googleBtn.bottomAnchor,left: view.leftAnchor, right: view.rightAnchor, paddingTop: 12, paddingLeft: 30, paddingRight: 30, height: 60)
        separatorLabel.anchor(top:appleBtn.bottomAnchor,left: view.leftAnchor, right: view.rightAnchor,paddingTop: 10,paddingLeft: 8, paddingRight: 8)
        separatorLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        separatorLabel.textAlignment = .center
        signupBtn.anchor(top: separatorLabel.bottomAnchor, left: view.leftAnchor, right: view.rightAnchor,paddingTop: 10, paddingLeft: 30, paddingRight: 30,height: 60)
        loginStackView.anchor(top: signupBtn.bottomAnchor,paddingTop: 10,width: 200)
        loginStackView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    }
    
}


extension WelcomeViewController{
    func styleElement(){
        headingLabel.text = "See what's happening in the world right now."
        headingLabel.font = UIFont(name: "Avenir Heavy", size: 30)
        headingLabel.textColor = .white
        headingLabel.numberOfLines = 2
        
//        buttons
        [googleBtn,appleBtn,signupBtn,loginbtn].forEach { item in
            item.titleLabel?.font =  UIFont(name: "Avenir Heavy", size: 18)
        }
//        let imageSize:CGSize = CGSize(width: 20, height: 20)
        googleBtn.setTitle("Continue with Google", for: .normal)
        [googleBtn,appleBtn].forEach { item in
            item.backgroundColor = .white
            item.layer.cornerRadius = 60/2
            item.setTitleColor(.black, for: .normal)
        }
        appleBtn.setTitle("Continue with Apple", for: .normal)
        signupBtn.setTitle("Create account", for: .normal)
        signupBtn.backgroundColor = UIColor(red: 0.11, green: 0.63, blue: 0.95, alpha: 1.00)
        signupBtn.layer.cornerRadius = 60/2
        signupBtn.setTitleColor(.white, for: .normal)
        

        separator.backgroundColor = .systemGray2
        separatorLabel.text = "Or"
        separatorLabel.font = UIFont(name: "Avenir Heavy", size: 18)
        separatorLabel.textColor = .systemGray2
        
        loginLabel.textColor = .white
        loginLabel.text = "Have an account?"
        loginLabel.font = UIFont(name: "Avenir Heavy", size: 18)
        
        loginbtn.backgroundColor = .none
        loginbtn.setTitle("Login", for: .normal)
        loginbtn.setTitleColor(UIColor(red: 0.11, green: 0.63, blue: 0.95, alpha: 1.00), for: .normal)
        
        loginStackView.axis = .horizontal
        loginStackView.distribution = .equalSpacing
        loginStackView.alignment = .center
        loginStackView.addArrangedSubview(loginLabel)
        loginStackView.addArrangedSubview(loginbtn)

        
//        googleBtn.imageEdgeInsets = UIEdgeInsets(
//            top: googleBtn.frame.size.height - imageSize.height/2,
//            left: googleBtn.frame.size.height - imageSize.height/2,
//            bottom: googleBtn.frame.size.height - imageSize.height/2,
//            right: googleBtn.frame.size.height - imageSize.height/2)
    }
}
