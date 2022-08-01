//
//  LoginController.swift
//  UBER clone App
//
//  Created by Roman on 22.07.2022.


import UIKit

class LoginController: UIViewController {

    //MARK: Properties
    private let titleLable: UILabel = {
        let lable = UILabel()
        lable.text = "UBER"
        lable.font = UIFont(name: "Avenir-Light", size: 36)
        lable.textColor = .white
        
        return lable
    }()
    
    private lazy var emailConteinerView: UIView = {
        
        let view = UIView().inputContainerView(image: #imageLiteral(resourceName: "ic_mail_outline_white_2x"),
                                               textField: emailTextField)
        view.heightAnchor.constraint(equalToConstant: 50).isActive = true
        return view
    }()
    
    private lazy var passwordConteinerView: UIView = {
        let view = UIView().inputContainerView(image: #imageLiteral(resourceName: "ic_lock_outline_white_2x"),
                                               textField: passwordTextField)
        view.heightAnchor.constraint(equalToConstant: 50).isActive = true
        return view
    }()
    
    private let emailTextField: UITextField = {
        return UITextField().textField(withPlaceholder: "Email",
                                       isSecureTextEntry: false)
    }()
    private let passwordTextField: UITextField = {
        return UITextField().textField(withPlaceholder: "Password",
                                       isSecureTextEntry: true)
    }()
    
    
    //MARK: Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        view.addSubview(titleLable)
        titleLable.anchor(top: view.safeAreaLayoutGuide.topAnchor)
        titleLable.centerX(inView: view)
        
       
        
        let stack = UIStackView(arrangedSubviews: [emailConteinerView, passwordConteinerView])
        stack.axis = .vertical
        stack.distribution = .fillEqually
        stack.spacing = 16
        
        view.addSubview(stack)
        stack.anchor(top: titleLable.bottomAnchor, left: view.leftAnchor, right: view.rightAnchor, paddingTop: 40, paddingLeft: 16,  paddingRight: 16)
        
        view.backgroundColor = UIColor.init(red: 25/255, green: 25/255, blue: 25/255, alpha: 1)
        
        
    }


}


