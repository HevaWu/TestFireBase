//
//  DataViewController.swift
//  TestFireBase
//
//  Created by He Wu on 2019/06/26.
//  Copyright © 2019 He Wu. All rights reserved.
//

import UIKit
import FirebaseAnalytics

class DataViewController: UIViewController {

    @IBOutlet weak var dataLabel: UILabel!
    @IBOutlet var control: UIPageControl!
    
    var dataObject: String = ""


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        control.addTarget(self, action: <#T##Selector#>, for: UIControl.Event.touchUpInside)
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.dataLabel!.text = dataObject
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        Analytics.setScreenName(dataObject, screenClass: "\(dataObject) Class")
    }
}

