//
//  UIResponderController.swift
//  LTExtensionDemo
//
//  Created by TopSky on 2018/5/3.
//  Copyright © 2018年 TopSky. All rights reserved.
//

import UIKit

class UIResponderController: BaseContentViewController {

    let label1 = UILabel.setConfig { (label) in
        label.font = UIFont.systemFont(ofSize: 14)
        label.textColor = UIColor.blue
        label.backgroundColor = UIColor.red
        label.text = "喝多了"
        label.frame = CGRect(x: 0, y: 0, width: 100, height: 100)
    }

    let button = UIButton.setConfig { (button) in
        button.setTitle("嗯的事", for: .normal)
        button.backgroundColor = UIColor.green
        button.frame = CGRect(x: 0, y: 200, width: 100, height: 100)
        button.addTarget(self, action: #selector(onClick(target:)), for: .touchUpInside)
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.

        contentView.addSubview(label1)
        contentView.addSubview(button)
    }

    @objc fileprivate func onClick(target: Any) {
        print("点击")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
