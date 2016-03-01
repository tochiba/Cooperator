//
//  ViewController.swift
//  Cooperator
//
//  Created by 千葉 俊輝 on 2016/02/28.
//  Copyright © 2016年 Toshiki Chiba. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        NCMBFacebookUtils.logInWithReadPermission(["email"]) {(user, error) -> Void in
            if (error != nil){
                if (error.code == NCMBErrorFacebookLoginCancelled){
                    // Facebookのログインがキャンセルされた場合
                    
                }else{
                    // その他のエラーが発生した場合
                    
                }
            }else{
                // 会員登録後の処理
                
            }
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

