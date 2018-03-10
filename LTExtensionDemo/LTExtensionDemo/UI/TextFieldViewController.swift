//
//  TextFieldViewController.swift
//  LTExtensionDemo
//
//  Created by TopSky on 2018/3/8.
//  Copyright © 2018年 TopSky. All rights reserved.
//

import UIKit

class TextFieldViewController: BaseContentViewController {

    let textField = UITextField()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.

        contentView.addSubview(textField)
        textField.frame = CGRect(x: 0, y: 0, width: 100, height: 100)
        textField.placeholder = "hello world"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func add() {
        addAction(title: "change color") {
            self.textField.placeholderColor(UIColor.red)
        }

        addAction(title: "change font") {
            self.textField.placeholderFont(UIFont.systemFont(ofSize: 20))
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
