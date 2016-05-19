//
//  FirstViewController.swift
//  preeze
//
//  Created by Jenkins, David Glenn (LARC-B7)[LITES] on 5/18/16.
//  Copyright © 2016 RocketScience. All rights reserved.
//

import UIKit
import FBSDKLoginKit

class FirstViewController: UIViewController {
//, UITableViewDataSource, UITableViewDelegate, FBSDKLoginButtonDelegate
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        if (FBSDKAccessToken.currentAccessToken() != nil)
        {
            // User is already logged in, do work such as go to next view controller.
        }
        else
        {
            let loginView : FBSDKLoginButton = FBSDKLoginButton()
            self.view.addSubview(loginView)
            loginView.center = self.view.center
            loginView.readPermissions = ["public_profile", "email", "user_friends"]
//            loginView.delegate = self
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

