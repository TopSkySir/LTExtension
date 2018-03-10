//
//  UIApplicationViewController.swift
//  LTExtensionDemo
//
//  Created by TopSky on 2018/3/9.
//  Copyright © 2018年 TopSky. All rights reserved.
//

import UIKit

class UIApplicationViewController: BaseTableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func add() {

        addAction(title: "topWindow") {
            let testView = UIView()
            testView.backgroundColor = UIColor.green
            testView.frame = CGRect(x: 0, y: 0, width: 100, height: 100)
            let window = UIApplication.topWindow()
            window?.addSubview(testView)
            print(UIApplication.topWindow())
        }

        addAction(title: "topViewController") {
            let vc = UIApplication.topViewController()
            print(vc)
        }

        addAction(title: "selectTab") {
            UIApplication.selectedTab(1)
        }

        addAction(title: "tabNavi") {
            print(UIApplication.tabNavi(1))
            print(UIApplication.tabNavi(0))
        }

        addAction(title: "appVersion") {
            print(UIApplication.appVersion)
            print(UIApplication.appBundleID)
            print(UIApplication.appBuildVersion)
            print(UIApplication.appBundleName)
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
