//
//  DataViewController.swift
//  TestFireBase
//
//  Created by ST21235 on 2019/06/26.
//  Copyright © 2019 He Wu. All rights reserved.
//

import UIKit
import FirebaseAnalytics

class DataViewController: UIViewController {

    @IBOutlet weak var dataLabel: UILabel!
    var dataObject: String = ""


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        Analytics.setScreenName(dataObject, screenClass: "\(dataObject) Class")
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.dataLabel!.text = dataObject
    }
}

