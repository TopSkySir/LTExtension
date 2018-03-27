//
//  AlertViewController.swift
//  LTExtensionDemo
//
//  Created by TopSky on 2018/3/27.
//  Copyright © 2018年 TopSky. All rights reserved.
//

import UIKit

class AlertViewController: BaseTableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func add() {
        addAction(title: "defualt") {
            UIAlertController.showAlert(self, title: "吃饭", message: "你吃饭了么", sureClosure: {
                print("eat")
            })
        }
        addAction(title: "2") {
            UIAlertController.showAlert(self, title: "吃饭", message: "你吃饭了么", sureTitle: "好的", sureClosure: {
                print("好的")
            }, cancelTitle: "不好", cancelClosure: {
                print("不好")
            })
        }
        
        addAction(title: "3") {
            UIAlertController.showSingleAlert(nil, title: "吃饭", message: "你吃饭了么")
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
