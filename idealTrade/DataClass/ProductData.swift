//
//  ProductData.swift
//  idealTrade
//
//  Created by 권성민 on 2018. 3. 12..
//  Copyright © 2018년 권성민. All rights reserved.
//

import UIKit

class ProductData: NSObject {
    
    var id: Int!
    var title: String!
    var comment: String!
    var company_id: Int!
    var image: String!
    var point1: String!
    var point2: String!
    var point3: String!
    var issued_stock: Int!
    var stock_price: Int!
    var goal_investment: CLong!
    var check1: String!
    var check2: String!
    var profit_info: String!
    var invest_start_date: Date!
    var invest_end_date: Date!
    var deposit_date: Date!
    
    override init() {
        
    }
    
    init(product: NSDictionary) {
        self.id = product["id"] as? Int
        self.title = product["title"] as? String
        self.comment = product["comment"] as? String
        self.company_id = product["company_id"] as? Int
        self.image = product["iamge"] as? String
        self.point1 = product["point1"] as? String
        self.point2 = product["point2"] as? String
        self.point3 = product["point3"] as? String
        self.issued_stock = product["issued_stock"] as? Int
        self.stock_price = product["stock_price"] as? Int
        self.goal_investment = product["goal_investment"] as? CLong
        self.check1 = product["check1"] as? String
        self.check2 = product["check2"] as? String
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd"
        
        let invest_start_date_string = product["invest_start_date"] as? String
        if ((invest_start_date_string) != nil) {
            self.invest_start_date = dateFormatter.date(from: invest_start_date_string!)! as Date!
        }
        
        let invest_end_date_string = product["invest_end_date"] as? String
        if ((invest_end_date_string) != nil) {
            self.invest_end_date = dateFormatter.date(from: invest_end_date_string!)! as Date!
        }
        
        let deposit_date_Strig = product["deposit_date"] as? String
        if ((deposit_date_Strig) != nil) {
            self.deposit_date = dateFormatter.date(from: deposit_date_Strig!)! as Date!
        }
    }
}
