//
//  UserData.swift
//  idealTrade
//
//  Created by 권성민 on 2018. 3. 12..
//  Copyright © 2018년 권성민. All rights reserved.
//

import UIKit

class UserData: NSObject {
    
    var id: Int!
    var userid: String!
    var name: String!
    
    override init() {
        
    }
    
    init(user:NSDictionary) {
        self.id = user["id"] as? Int
        self.userid = user["userid"] as? String
        self.name = user["name"] as? String
    }
}
