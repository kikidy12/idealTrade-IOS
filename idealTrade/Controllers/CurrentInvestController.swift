//
//  CurrentInvestController.swift
//  idealTrade
//
//  Created by 권성민 on 2018. 3. 8..
//  Copyright © 2018년 권성민. All rights reserved.
//

import UIKit

class CurrentInvestController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
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
    @IBAction func InvestDetailBtn(_ sender: UIButton) {
        self.performSegue(withIdentifier: "itemDetailSegue", sender: nil)
    }
    @IBAction func lastInvestBtn(_ sender: UIButton) {
        self.performSegue(withIdentifier: "lastInvestSegue", sender: nil)
    }
    @IBAction func MyInvestBtn(_ sender: UIButton) {
        self.performSegue(withIdentifier: "myInvestSegue", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "testSegue" {
            
        }
    }
    
}
