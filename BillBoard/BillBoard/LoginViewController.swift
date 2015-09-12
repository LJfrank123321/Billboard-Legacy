//
//  ViewController.swift
//  BillBoard
//
//  Created by YanHan on 15/9/11.
//  Copyright (c) 2015年 Takefive Interactive. All rights reserved.
//

import UIKit
import FBSDKCoreKit
import FBSDKLoginKit

class LoginViewController: UIViewController, FBSDKLoginButtonDelegate {

    var loginButton: FBSDKLoginButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.loginButton = FBSDKLoginButton()
        self.loginButton.center = self.view.center
        self.loginButton.delegate = self
        self.view.addSubview(self.loginButton)
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func loginButton(loginButton: FBSDKLoginButton!, didCompleteWithResult result: FBSDKLoginManagerLoginResult!, error: NSError!) {
        println(result.description)
        UserInfo.facebookLogin(result.token.tokenString, completion: { (error, result) -> () in
            if error != ""{
                //succ
                self.exit()
            }else{
                println(error)
            }
        })
    }

    func loginButtonDidLogOut(loginButton: FBSDKLoginButton!) {
        
    }
    
    func exit(){
        self.view.removeFromSuperview()
        self.removeFromParentViewController()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

