//
//  ViewController.swift
//  idealTrade
//
//  Created by 권성민 on 2018. 3. 8..
//  Copyright © 2018년 권성민. All rights reserved.
//

import UIKit
import Alamofire

class ViewController: UIViewController, UITextFieldDelegate {
    @IBOutlet weak var idTextField: UITextField!
    @IBOutlet weak var pwTextField: UITextField!
    @IBOutlet weak var loginBtnSet: UIButton!
    @IBOutlet weak var signUpBtnSet: UIButton!
    @IBOutlet weak var idLb: UILabel!
    @IBOutlet weak var pwLb: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        idTextField.delegate = self
        pwTextField.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func loginBtn(_ sender: UIButton) {
        
        let passwordString = "lebit" + pwTextField.text! + "1101"
        
        let shaData = sha256(string: passwordString)
        let shaHex = shaData!.map { String(format: "%02hhx", $0) }.joined()
        
        let parameters = [
            "id": idTextField.text!,
            "password": shaHex
        ] as [String: Any]
        if idTextField.text == "" || pwTextField.text == "" {
            
        }
        
        else {
            Alamofire.request("http://ec2-52-78-3-167.ap-northeast-2.compute.amazonaws.com/account", method: .post, parameters: parameters).responseJSON { response in
                print("responsree = %@", response)
                
                let responseJSON = response.result.value as? [String: Any]
                let code = responseJSON?["code"] as? String
                let message = responseJSON?["message"] as? String
                let data = responseJSON?["data"] as? NSDictionary
                NSLog("message = %@", message!)
                
                if code == "S" {
                    let userData = UserData(user: data!["user"] as! NSDictionary)
                    GeneralUtil.setUserData(userData: userData)
                    GeneralUtil.setUserLogedIn(login: true)
                    print("is loged in =", GeneralUtil.isUserLogedIn())
                    self.performSegue(withIdentifier: "loginSegue", sender: nil)
                }
                else {
                }
            }
        }
    }
    
    func sha256(string: String) -> Data? {
        guard let messageData = string.data(using:String.Encoding.utf8) else { return nil; }
        var digestData = Data(count: Int(CC_SHA256_DIGEST_LENGTH))
        
        _ = digestData.withUnsafeMutableBytes {digestBytes in
            messageData.withUnsafeBytes {messageBytes in
                CC_SHA256(messageBytes, CC_LONG(messageData.count), digestBytes)
            }
        }
        return digestData
    }
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        if textField.isEqual(idTextField) {
            idLb.textColor = UIColor(red:0.96, green:0.26, blue:0.21, alpha:1.00)
        }
        else if textField.isEqual(pwTextField) {
            pwLb.textColor = UIColor(red:0.96, green:0.26, blue:0.21, alpha:1.00)
        }
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        if textField.isEqual(idTextField) {
            if textField.text == "" {
                idLb.textColor = UIColor.black
            }
        }
        else if textField.isEqual(pwTextField) {
            if textField.text == "" {
                pwLb.textColor = UIColor.black
            }
        }
    }
}

