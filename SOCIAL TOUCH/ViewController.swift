//
//  ViewController.swift
//  SOCIAL TOUCH
//
//  Created by MD.SAZID HASAN DIP on 6/22/16.
//  Copyright © 2016 MD.SAZID HASAN DIP. All rights reserved.
//

import UIKit
import FBSDKCoreKit
import FBSDKLoginKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func fbBtnPressed(sender:UIButton!){
        let facebookLogin = FBSDKLoginManager()
        
        facebookLogin.logInWithReadPermissions(["email"],fromViewController: self) { (facebookResult:FBSDKLoginManagerLoginResult!, facebookError:NSError!) in
            
            if facebookError != nil {
                print("Facebook login failed \(facebookError)")
            }else {
                let  accessToken = FBSDKAccessToken.currentAccessToken().tokenString
                print("successfully loged in with facebook \(accessToken)")
                facebookLogin.logOut()
             
            }
           
        }
    }
    
    
    
    
    
//        let fbLoginManager : FBSDKLoginManager = FBSDKLoginManager()
//        fbLoginManager.loginBehavior = FBSDKLoginBehavior.Web
//        fbLoginManager.logInWithReadPermissions(["email"], fromViewController: self, handler: { (result, error) -> Void in
//            if (error == nil){
//                let fbloginresult : FBSDKLoginManagerLoginResult = result
//                if fbloginresult.grantedPermissions != nil { //Here we have to check that the set contains value or not
//                    if(fbloginresult.grantedPermissions.contains("email"))
//                    {
//                        self.getFBUserData()
//                        fbLoginManager.logOut()
//                    }
//                }
//            }
//        })
//}
//    
//    func getFBUserData(){
//        if((FBSDKAccessToken.currentAccessToken()) != nil){
//            FBSDKGraphRequest(graphPath: "me", parameters: ["fields": "id, name, first_name, last_name, picture.type(large), email"]).startWithCompletionHandler({ (connection, result, error) -> Void in
//                if (error == nil){
//                   
//                    print(result)
//                }
//            })
//        }
//    }
}