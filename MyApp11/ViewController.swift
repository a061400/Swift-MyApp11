//
//  ViewController.swift
//  MyApp11
//
//  Created by 謝尚霖 on 2017/9/22.
//  Copyright © 2017年 謝尚霖. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "segueToPage2" {
            print("prepar: Page2")
            let vc2 = segue.destination as! Page2VC
            let rand = String(arc4random_uniform(49)+1)
            print("Main:\(rand)")
            
            vc2.randString = rand
            
            
            
        }else if segue.identifier == "segueToPage3" {
            print("prepar: Page3")
        }
        
    }
    
    
    
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        if segue.identifier == "unwindfromPage2" {
            print("back: Page2")
            
            //以下為確認目的地
          //   print(segue.destination is ViewController)
            //以下為確認目的地與來源
          //   print(segue.destination is Page2VC)
          //   print(segue.source is Page2VC)
            
//            let viewC = segue.destination as! ViewController
//            let rand = String(arc4random_uniform(49))
            
            
            
        }else if segue.identifier == "unwindfromPage3" {
        print("back: Page3")
    }
}
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
let app = UIApplication.shared.delegate as! AppDelegate
    
    print("MainVC:app:rand = \(app.rand)")
   
    let newrand = Int(arc4random_uniform(100)+100)
    print("MainVC:app:newrand = \(newrand)")

    app.rand = newrand
        
        
        
        print("static var1 = \(AppDelegate.var1)")

}
}
