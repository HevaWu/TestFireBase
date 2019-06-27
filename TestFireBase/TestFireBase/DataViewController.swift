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
    @IBAction func clickButton(_ sender: UIButton) {
        // send click event
        Analytics.logEvent("clickEvent", parameters: ["screen": dataObject])
    }
    
    var dataObject: String = ""


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
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

