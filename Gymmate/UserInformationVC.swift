//
//  UserInformationVC.swift
//  Gymmate
//
//  Created by Trung Do on 2/14/16.
//  Copyright © 2016 TrungDo. All rights reserved.
//

import Foundation
import UIKit
import MapKit
import CoreLocation
import GoogleMaps
import Firebase
import FBSDKCoreKit
import FBSDKLoginKit

class UserInformationVC: UIViewController{
    var ref =  Firebase(url:"https://gym8.firebaseio.com");

    override func viewDidLoad() {
        showUserInfoView()
        
    }
    
    func showUserInfoView(){
        let userInfoView = UserInfoView(frame:CGRect(x:0, y:66, width:self.view.frame.width,height: self.view.frame.height))
        userInfoView.tag = 2
        self.view.addSubview(userInfoView)
        
        
    }
    

//        let facebookLogin = FBSDKLoginManager()
//        facebookLogin.logInWithReadPermissions(["email"], fromViewController:self.parentViewController, handler: {
//            (facebookResult, facebookError) -> Void in
//            if facebookError != nil {
//                print("Facebook login failed. Error \(facebookError)")
//            } else if facebookResult.isCancelled {
//                print("Facebook login was cancelled.")
//            } else {
//                            }
//        })
//        let accessToken = FBSDKAccessToken.currentAccessToken().tokenString
//
//        ref.authWithOAuthProvider("facebook", token: accessToken,
//            withCompletionBlock: { error, authData in
//                if error != nil {
//        let loginVC: UIViewController = UIViewController(nibName: "LoginIntroVC", bundle: nil)
//        loginVC.view.backgroundColor = UIColor.whiteColor()
//        self.navigationController?.pushViewController(loginVC, animated: true)
//
//                } else {
//                    print(authData.providerData["displayName"])
//                    print("Logged in! \(authData)")
//                }
//        })
    
    
}
    