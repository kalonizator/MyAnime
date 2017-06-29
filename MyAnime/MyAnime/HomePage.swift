//
//  ViewController.swift
//  MyAnime
//
//  Created by kalonizator on 26.06.17.
//  Copyright © 2017 kalonizator. All rights reserved.
//

import UIKit

class HomePage: UIViewController {
    @IBOutlet weak var nextButton: UIButton!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    
    
    override func viewDidAppear(_ animated: Bool) {
        UIView.animate(withDuration: 0.3) {
        self.emailTextField.center.x += self.view.bounds.width
        self.passwordTextField.center.x -= self.view.bounds.width
        self.nextButton.backgroundColor = UIColor.init(colorLiteralRed: 4, green: 4, blue: 4, alpha: 0.1)
//
      }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        emailTextField.placeholder = "Email"
        passwordTextField.placeholder = "Password"
        nextButton.bounds = CGRect (x: 0, y: 0, width: 88, height: 44)
        nextButton.center = CGPoint (x: view.bounds.width / 2, y: 400)
        nextButton.setTitle("Hello", for: .normal)
        nextButton.layer.cornerRadius = 7
        nextButton.layer.borderWidth = 1
        nextButton.layer.borderColor = UIColor.white.cgColor
        nextButton.addTarget(self, action: #selector(getter: HomePage.nextButton), for: .touchUpInside)
        nextButton.titleLabel?.font = UIFont.systemFont(ofSize: 17)
//        self.view.addSubview(nextButton)
        
//        func buttonWasPressed() {
//            print("You pressed the button")
//        }
        
        
        self.navigationController?.isNavigationBarHidden = true
        self.emailTextField.center.x -= view.bounds.width
        self.passwordTextField.center.x += view.bounds.width
        
        
        
    }
    
    @IBAction func buttonPressed(_ sender: UIButton) {
            performSegue(withIdentifier: "idHomeSegue", sender: self)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    

}

