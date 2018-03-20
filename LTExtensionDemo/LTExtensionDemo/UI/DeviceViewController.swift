//
//  DiveceViewController.swift
//  LTExtensionDemo
//
//  Created by TopSky on 2018/3/9.
//  Copyright © 2018年 TopSky. All rights reserved.
//

import UIKit

class DeviceViewController: BaseTableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    override func add() {

        addAction(title: "device") {
            print(UIDevice.SystemVersion)
            print(UIDevice.SystemName)
            print(UIDevice.uuid.safeValue)
            print(UIDevice.platform)

        }
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
