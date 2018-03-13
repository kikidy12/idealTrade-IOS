//
//  ItemDetailTabController.swift
//  idealTrade
//
//  Created by 권성민 on 2018. 3. 12..
//  Copyright © 2018년 권성민. All rights reserved.
//

import UIKit

class ItemDetailTabController: UIViewController {
    @IBOutlet weak var titleLb: UILabel!
    @IBOutlet weak var compName: UILabel!
    @IBOutlet weak var stateView: UIView!
    @IBOutlet weak var warningMsgView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        titleLb.text = "세계적인 기업에 납품하는 화장품 원료 기업 인코스팜"
        compName.text = "(주) 인코스팜 인가 아닌가"
        
        stateView.layer.borderWidth = 1
        stateView.layer.borderColor = UIColor.black.cgColor
        
        warningMsgView.layer.borderColor = UIColor.red.cgColor
        warningMsgView.layer.borderWidth = 1
        
        self.navigationController?.navigationBar.topItem?.title = ""
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
