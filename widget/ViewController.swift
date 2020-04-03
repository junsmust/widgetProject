//
//  ViewController.swift
//  widget
//
//  Created by 임명준 on 2020. 4. 2..
//  Copyright © 2020년 임명준. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        
        setWidget()
    }
    
    func setWidget(){
        UserDefaults.init(suiteName: "group.kr.junsmust.widget")?.setValue("700", forKey: "beenTogether")
    }


}

