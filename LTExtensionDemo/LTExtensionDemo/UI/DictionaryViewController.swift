//
//  DictionaryViewController.swift
//  LTExtensionDemo
//
//  Created by TopSky on 2018/3/2.
//  Copyright © 2018年 TopSky. All rights reserved.
//

import UIKit

class DictionaryViewController: BaseTableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func add() {
        addAction(title: "键值映射") {
            let f: Float = 2.0
            let dict: [Int : Any] = [1: "string", 2: true, 3: 1, 4: 4.0, 5: f]
            print(dict.stringValue(1))
            print(dict.stringSafeValue(11))
            print(dict.boolValue(2))
            print(dict.boolSafeValue(1))
            print(dict.intValue(3))
            print(dict.intSafeValue(1))
            print(dict.floatValue(4))
            print(dict.floatSafeValue(4))
            print(dict.doubleValue(4))
            print(dict.doubleSafeValue(4))
            print(dict[4])
            print("=============")
            let a = dict[4] as? Float
            print(a)
            let c = dict[4] as? Double
            print(c)
            let b = dict[5] as? Float
            print(b)
            let d = dict[5] as? Double
            print(d)
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
