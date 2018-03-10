//
//  OptionalViewController.swift
//  LTExtensionDemo
//
//  Created by TopSky on 2018/2/26.
//  Copyright © 2018年 TopSky. All rights reserved.
//

import UIKit

class OptionalViewController: BaseTableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    override func add() {
        addAction(title: "isNil") {
            let a: String? = ""
            var b: String? = nil
            print(a.isNil)
            print(b.isNil)
            b = "a"
            print(b.isNil)
        }

        addAction(title: "isNilOrEmpty") {
            let a: String? = ""
            var b: String? = nil
            print(a.isNilOrEmpty)
            print(b.isNilOrEmpty)
            b = "a"
            print(b.isNilOrEmpty)

            var c: [String]? = [String]()
            print(c.isNilOrEmpty)
            c?.append("name")
            print(c.isNilOrEmpty)

            var d: [String: Any]? = [String: Any]()
            print(d.isNilOrEmpty)
            d?["anme"] = 1
            print(d.isNilOrEmpty)
        }

        addAction(title: "wrappedCount") {
            let a: String? = ""
            var b: String? = nil
            print(a.wrappedCount)
            print(b.wrappedCount)
            b = "a"
            print(b.wrappedCount)

            var c: [String]? = [String]()
            print(c.wrappedCount)
            c?.append("name")
            print(c.wrappedCount)

            var d: [String: Any]? = [String: Any]()
            print(d.wrappedCount)
            d?["anme"] = 1
            print(d.wrappedCount)
        }

        addAction(title: "safe") {
            let a: String? = "lt"
            print(a.safeValue)
//            print(a.safeValue("name"))

            let b: String? = nil
            print(b.safeValue)
//            print(b.safeValue("name"))
//            print(b.safeValue())


            let c: Int? = nil
            let d: Float? = nil
            let e: Double? = nil
            let f: CGFloat? = nil
            let g: Bool? = nil
            print(c.safeValue)
            print(d.safeValue)
            print(e.safeValue)
            print(f.safeValue)
            print(g.safeValue)

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
