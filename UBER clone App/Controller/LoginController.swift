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
    
    
    
    //MARK: Lifecycle
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        
        view.addSubview(titleLable)
        titleLable.anchorXXX(top: view.safeAreaLayoutGuide.topAnchor)
        titleLable.centerX(inView: view)
        
        
        view.backgroundColor = UIColor.init(red: 25/255, green: 25/255, blue: 25/255, alpha: 1)
        
        
    }


}

