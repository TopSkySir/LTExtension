//
//  StringViewController.swift
//  LTExtensionDemo
//
//  Created by TopSky on 2018/2/27.
//  Copyright © 2018年 TopSky. All rights reserved.
//

import UIKit

class StringViewController: BaseTableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func add() {

        addAction(title: "宽高") {
            let str = "ABCDEFG"
            let font = UIFont.systemFont(ofSize: 16)
            print(str.width(UIFont.systemFont(ofSize: 16)))
            print(str.size(UIFont.systemFont(ofSize: 16)))
            print(str.height(UIFont.systemFont(ofSize: 16)))

            print(str.width(font, height: 50))
            print(str.height(font, width: 30))
            print(str.size(font, contentSize: CGSize(width: 30, height: Double(MAXFLOAT))))
            print(str.size(font, contentSize: CGSize(width: 50, height: 50)))

        }

        addAction(title: "trim") {
            let a = "   abc   "
            print(":\(a.trim()):")
        }

        addAction(title: "completeTrim") {
            let b = "\r\n AAA \t\n"
            print(":\(b.completeTrim()):")
        }

        addAction(title: "replace") {
            let a = "abcc"
            print("\(a.replace("c", "e"))")
        }

        addAction(title: "intValue") {
            var a = "11234"
            print(a.intValue!)
            a = "asdf"
            print(a.getIntValue())
            print(a.getIntValue(10))
        }

        addAction(title: "floatValue") {
            var a = "11234"
            print(a.floatValue!)
            a = "asdf"
            print(a.getFloatValue())
            print(a.getFloatValue(10))
        }

        addAction(title: "doubleValue") {
            var a = "11234"
            print(a.doubleValue!)
            a = "asdf"
            print(a.getDoubleValue())
            print(a.getDoubleValue(10))
        }

        addAction(title: "substring") {
            let a = "1231245"
            print(a[2,1])
            print(a[3,8])
            print(a[-1,-1])
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
