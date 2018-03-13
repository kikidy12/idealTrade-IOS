//
//  GeneralUtil.swift
//  idealTrade
//
//  Created by 권성민 on 2018. 3. 12..
//  Copyright © 2018년 권성민. All rights reserved.
//

import UIKit
import Foundation
import SystemConfiguration

class GeneralUtil: NSObject {
    static var receiveUserData: UserData = UserData()
    
    static func setUserToken(token: NSString) {
        UserDefaults.standard.set(token, forKey: "token")
        UserDefaults.standard.synchronize()
    }
    
    static func getUserToken() -> NSString{
        return UserDefaults.standard.string(forKey: "token")! as NSString
    }
    
    static func setUserLogedIn(login:Bool) {
        UserDefaults.standard.set(login, forKey: "login")
        UserDefaults.standard.synchronize()
    }
    
    static func isUserLogedIn() -> Bool {
        let login:Bool = UserDefaults.standard.bool(forKey: "login")
        
        return login
    }
    
    static func setUserData(userData:UserData) {
        UserDefaults.standard.set(userData.id, forKey: "id")
        UserDefaults.standard.set(userData.name, forKey: "name")
        UserDefaults.standard.set(userData.userid, forKey: "userid")
    }
    
    static func getUserData() -> UserData {
        let userData:UserData = UserData()
        userData.id = UserDefaults.standard.integer(forKey: "id")
        userData.name = UserDefaults.standard.string(forKey: "name")
        userData.userid = UserDefaults.standard.string(forKey: "userid")
        
        return userData
    }
}
