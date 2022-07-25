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
        let view = UIView()
        
        let imageView = UIImageView()
        imageView.image = #imageLiteral(resourceName: "ic_mail_outline_white_2x")
        imageView.alpha = 0.87
        
        view.addSubview(imageView)
        imageView.centerYYY(inView: view)
        imageView.anchorXXX(left: view.leftAnchor,
                            paddingLeft: 8,
                            width: 24,
                            height: 24)
        
        view.addSubview(emailTextField)
        emailTextField.centerYYY(inView: view)
        emailTextField.anchorXXX(left: imageView.rightAnchor,
                                 bottom: view.bottomAnchor,
                                 right: view.rightAnchor,
                                 paddingLeft: 8, paddingRight: 8)

        let separatorView = UIView()
        separatorView.backgroundColor = .lightGray
        view.addSubview(separatorView)
        separatorView.anchorXXX(left: view.leftAnchor,
                                bottom: view.bottomAnchor,
                                right: view.rightAnchor,
                                paddingLeft: 8,
                                height: 0.75)
    
        return view
    }()
    
    private let emailTextField: UITextField = {
        let tf = UITextField()
        tf.borderStyle = .none
        tf.font = UIFont.systemFont(ofSize: 16)
        tf.keyboardAppearance = .dark
        tf.textColor = .white
        tf.attributedPlaceholder = NSAttributedString(string: "Email", attributes:
                                                        [NSAttributedString.Key.foregroundColor : UIColor.lightGray])
        return tf
    }()
    
    
    
    //MARK: Lifecycle
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        
        view.addSubview(titleLable)
        titleLable.anchorXXX(top: view.safeAreaLayoutGuide.topAnchor)
        titleLable.centerXXX(inView: view)
        
        view.addSubview(emailConteinerView)
        emailConteinerView.anchorXXX(top: titleLable.bottomAnchor, left: view.leftAnchor, right: view.rightAnchor, paddingTop: 40, paddingLeft: 16, paddingRight: 16, height: 50)
        
        
        
        
        view.backgroundColor = UIColor.init(red: 25/255, green: 25/255, blue: 25/255, alpha: 1)
        
        
    }


}

