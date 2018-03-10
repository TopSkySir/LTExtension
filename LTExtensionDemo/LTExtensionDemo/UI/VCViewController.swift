//
//  VCViewController.swift
//  LTExtensionDemo
//
//  Created by TopSky on 2018/3/8.
//  Copyright © 2018年 TopSky. All rights reserved.
//

import UIKit

class VCViewController: BaseTableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func add() {

        addAction(title: "pop") {
            self.popBack()
        }

        addAction(title: "present") {
            self.presentTo(VCViewController())
        }

        addAction(title: "dismiss") {
            self.dismissBack()
        }

        addAction(title: "push") {
            self.pushTo(RootViewController())
        }

        addAction(title: "goBack") {
            self.goBack()
        }

        addAction(title: "popToLast") {
            self.popTo(RootViewController.self)
        }

        addAction(title: "popToFirst") {
            self.popTo(RootViewController.self, false, false)
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
