//
//  ArrayViewController.swift
//  LTExtensionDemo
//
//  Created by TopSky on 2018/2/28.
//  Copyright © 2018年 TopSky. All rights reserved.
//

import UIKit

//class ArrayTestModel {
//    var name: String?
//    var address: String?
//}


class ArrayViewController: BaseTableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    override func add() {

        addAction(title: "safe") {
            var a = [1,2,3,4,6,7,9]
            print(a[safe: 3])
            print(a[safe: 10])
            let b = a.safe(index: 3).safeValue
            print(b)
        }

        addAction(title: "remove") {
            var a = [1,2,3,4,6,7,9]
            a.remove(of: 10)
            a.remove(of: 3)
            print(a)
        }

        addAction(title: "move") {
            var a = [9,1,2,3,4,5,6,7,8]
            a.move(1, 2)
            print(a)
            a.move(2, 1)
            print(a)
            a.move(6, 1)
            print(a)
            a.moveLast(5)
            print(a)
            a.moveFirst(a.endIndex - 1)
            print(a)
        }

        addAction(title: "exchange") {
            var a = Array(0...10)
            print(a)
//            a.exchange(7, 9)
//            print(a)
//            a.exchange(7, 9)
//            print(a)
            a.exchange(0, 19)
            print(a)
            a.exchange(10, 0)
            print(a)
            a.exchange(0, 10)
            print(a)

            let c = Int.init()
            print(c)

        }
    }



//    testGeneric([1, 2, 3, 4, 5])
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
