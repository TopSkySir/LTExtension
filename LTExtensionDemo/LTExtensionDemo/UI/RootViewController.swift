//
//  RootViewController.swift
//  TSNaviBarTransitionDemo
//
//  Created by TopSky on 2018/2/8.
//  Copyright © 2018年 TopSky. All rights reserved.
//

import UIKit

class RootViewController: BaseTableViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Extension"
    }


    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
//        self.navigationController?.navigationBar.isTranslucent = true
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func add() {
        addPushViewcontroller(vcType: DateViewController.self, title: "Date")
        addPushViewcontroller(vcType: AlertViewController.self, title: "UIAlertController")
        addPushViewcontroller(vcType: DeviceViewController.self, title: "UIDevice")
        addPushViewcontroller(vcType: UIApplicationViewController.self, title: "UIApplication")
        addPushViewcontroller(vcType: VCViewController.self, title: "UIViewController")
        addPushViewcontroller(vcType: ColorViewController.self, title: "UIColor")
        addPushViewcontroller(vcType: ImageViewController.self, title: "UIImage")
        addPushViewcontroller(vcType: TextFieldViewController.self, title: "UITextField")


        addPushViewcontroller(vcType: DictionaryViewController.self, title: "Dictionary")
        addPushViewcontroller(vcType: ArrayViewController.self, title: "Array")
        addPushViewcontroller(vcType: NSAttributedStringVC.self, title: "NSAttributedString")
        addPushViewcontroller(vcType: StringViewController.self, title: "String")
        addPushViewcontroller(vcType: OptionalViewController.self, title: "Optional")
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
