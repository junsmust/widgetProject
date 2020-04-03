//
//  TodayViewController.swift
//  EnsolMj
//
//  Created by 임명준 on 2020. 4. 2..
//  Copyright © 2020년 임명준. All rights reserved.
//

import UIKit
import NotificationCenter

class TodayViewController: UIViewController, NCWidgetProviding {
        
    @IBOutlet weak var beenTogetherDate: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view from its nib.
        let today = Date()
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd"
        
        let startDateStr = dateFormatter.string(from: today)
        print("startDateStr  \(startDateStr)")
        let startDate = dateFormatter.date(from:"2019-07-11")!
        
        let endDate = dateFormatter.date(from:"2020-04-02")!
        print("sdate  \(startDate)  edate \(endDate)")
        let interval = endDate.timeIntervalSince(startDate)
        let days = interval
        print(days)

       // let days = Int(interval / 86400)
        //print("\(days)일만큼 차이납니다.")
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        if let beenTogether = UserDefaults.init(suiteName: "group.kr.junsmust.widget")?.value(forKey: "beenTogether"){
            print("test")
            beenTogetherDate.text = beenTogether as? String
        }
    }
    func widgetPerformUpdate(completionHandler: (@escaping (NCUpdateResult) -> Void)) {
        // Perform any setup necessary in order to update the view.
        
        // If an error is encountered, use NCUpdateResult.Failed
        // If there's no update required, use NCUpdateResult.NoData
        // If there's an update, use NCUpdateResult.NewData
        
        completionHandler(NCUpdateResult.newData)
    }
    
}
