//
//  TheOtherViewController.swift
//  Final Project
//
//  Created by Spencer Curran on 5/2/20.
//  Copyright © 2020 Spencer Curran. All rights reserved.
//

import UIKit
import WebKit

class TheOtherViewController: UIViewController {
    
    
    @IBOutlet weak var webKit: WKWebView!
    
    
    
    @IBAction func openPage(_ sender: Any) {
        
        
        
        if let url = URL(string: "https://github.com/spentc4"){
            UIApplication.shared.open(url, options: [:])
        }
    }
    
    
    
    
    
    
    
    
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        
        
        let myURL = URL(string: "https://github.com/spentc4")
        let myRequest = URLRequest(url: myURL!)
        webKit.load(myRequest)
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
