//
//  Page2VC.swift
//  MyApp11
//
//  Created by 謝尚霖 on 2017/9/22.
//  Copyright © 2017年 謝尚霖. All rights reserved.
//

import UIKit

class Page2VC: UIViewController {

    
    
    
    @IBOutlet weak var rand: UILabel!
    var randString = ""
    
    
    @IBAction func quit(_ sender: Any) {
        exit(0)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        print("I am Page2")
        rand.text =  randString
        
        
        
        let app = UIApplication.shared.delegate as! AppDelegate
        print("MainVC:app:rand = \(app,rand)")
       
        
    }

}
