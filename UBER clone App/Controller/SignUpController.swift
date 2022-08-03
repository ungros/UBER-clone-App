//
//  SignUpController.swift
//  UBER clone App
//
//  Created by Roman on 01.08.2022.
//

import UIKit

class SignUpController: UIViewController {
    //MARK: - Properties
    
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
    
    private lazy var fullNameConteinerView: UIView = {
        
        let view = UIView().inputContainerView(image: #imageLiteral(resourceName: "ic_person_outline_white_2x"),
                                               textField: fullNameTextField)
        view.heightAnchor.constraint(equalToConstant: 50).isActive = true
        return view
    }()
    
    private lazy var passwordConteinerView: UIView = {
        let view = UIView().inputContainerView(image: #imageLiteral(resourceName: "ic_lock_outline_white_2x"),
                                               textField: passwordTextField)
        view.heightAnchor.constraint(equalToConstant: 50).isActive = true
        return view
    }()
    
    private lazy var accountTypeConteinerView: UIView = {
        let view = UIView().inputContainerView(image: #imageLiteral(resourceName: "ic_account_box_white_2x"), segmentedControl: accountTypeSegmentControll)
        view.heightAnchor.constraint(equalToConstant: 80).isActive = true
        return view
    }()
    
    private let emailTextField: UITextField = {
        return UITextField().textField(withPlaceholder: "Email",
                                       isSecureTextEntry: false)
    }()
    
    private let fullNameTextField: UITextField = {
        return UITextField().textField(withPlaceholder: "Full name",
                                       isSecureTextEntry: false)
    }()
    
    private let passwordTextField: UITextField = {
        return UITextField().textField(withPlaceholder: "Password",
                                       isSecureTextEntry: true)
    }()
    
    private let accountTypeSegmentControll: UISegmentedControl = {
        let sc = UISegmentedControl(items: ["Rider", "Driver"])
        sc.backgroundColor = .backgroundColor
        sc.selectedSegmentTintColor = .backgroundColor
        
        sc.tintColor = UIColor(white: 1, alpha: 0.87)   //0.87 - google matheria design guide
        sc.selectedSegmentIndex = 0
        return sc
        
    }()
    
    private let signUpButton: AuthButton = {
        let button = AuthButton(type: .system)
        button.setTitle("Sign Up", for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
        return button
    }()
    
    private let alreadyHaveAccountButton: UIButton = {
        let button = UIButton(type: .system)
        let attributedTitle = NSMutableAttributedString(string: "Allready have an account button?", attributes: [NSAttributedString.Key.font: UIFont.systemFont(ofSize: 16), NSAttributedString.Key.foregroundColor: UIColor.lightGray])
        attributedTitle.append(NSAttributedString(string: " Sign In.", attributes: [NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 16), NSAttributedString.Key.foregroundColor: UIColor.mainBlueTint]))
        
        // BUTTON ACTION
        
        button.addTarget(self, action: #selector(handleShowLogin), for: .touchUpInside)
        
        button.setAttributedTitle(attributedTitle, for: .normal)
        
        return button
    }()
    
    
    //MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
       // view.backgroundColor = .blue
        configureUI()
    }
    
    
    //MARK: - Selectors
   
    @objc func handleShowLogin() {
        navigationController?.popViewController(animated: true)
    }
    
    
    //MARK: - Helper functions
    private func configureUI() {
        view.backgroundColor = .backgroundColor
        
        view.addSubview(titleLable)
        titleLable.anchor(top: view.safeAreaLayoutGuide.topAnchor)
        titleLable.centerX(inView: view)
        
       
        
        let stack = UIStackView(arrangedSubviews: [emailConteinerView,
                                                   fullNameConteinerView,
                                                   passwordConteinerView,
                                                   accountTypeConteinerView,
                                                   signUpButton
                                                   ])
        stack.axis = .vertical
        stack.distribution = .fillProportionally
        stack.spacing = 16
        
        view.addSubview(stack)
        stack.anchor(top: titleLable.bottomAnchor, left: view.leftAnchor, right: view.rightAnchor, paddingTop: 40, paddingLeft: 16,  paddingRight: 16)
        
        view.addSubview(alreadyHaveAccountButton)
        alreadyHaveAccountButton.centerX(inView: view)
        alreadyHaveAccountButton.anchor(bottom: view.safeAreaLayoutGuide.bottomAnchor, height: 32)
    
   
    }
    
    private func configureNavigationBar() {
        navigationController?.navigationBar.isHidden = true
        navigationController?.navigationBar.barStyle = .black
    }
}
