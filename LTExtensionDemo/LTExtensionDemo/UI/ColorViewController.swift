//
//  ColorViewController.swift
//  LTExtensionDemo
//
//  Created by TopSky on 2018/3/8.
//  Copyright © 2018年 TopSky. All rights reserved.
//

import UIKit

class ColorViewController: BaseContentViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    override func add() {

        addAction(title: "color created by float") {
            self.contentView.backgroundColor = UIColor.color(100, 100, 100, 0.5)
        }

        addAction(title: "color created by hex") {
            self.contentView.backgroundColor = UIColor.color(0x112345, 0.5)
        }

        addAction(title: "color created by hex string") {
//            self.contentView.backgroundColor = UIColor.color("#000000", 0.5)
//            self.contentView.backgroundColor = UIColor.color("000000   \n", 0.5)
//            self.contentView.backgroundColor = UIColor.color("0x000000", 0.5)
            self.contentView.backgroundColor = UIColor.color("0X000000", 0.5)
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
