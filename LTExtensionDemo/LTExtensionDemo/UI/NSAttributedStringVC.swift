//
//  NSAttributedStringVC.swift
//  LTExtensionDemo
//
//  Created by TopSky on 2018/2/27.
//  Copyright © 2018年 TopSky. All rights reserved.
//

import UIKit

class NSAttributedStringVC: BaseContentViewController {

    let label = UILabel()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.

        label.backgroundColor = UIColor.green
        label.frame = CGRect(x: 0, y: 0, width: view.frame.width, height: 100)
        label.textAlignment = .center
        contentView.addSubview(label)

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    override func add() {

        addAction(title: "属性字符串拼接测试") {
            let text = "$"
            var dict = [NSAttributedStringKey: Any]()
            dict[NSAttributedStringKey.font] = UIFont.systemFont(ofSize: 20)
            dict[NSAttributedStringKey.foregroundColor] = UIColor.red

            let attributedText = NSAttributedString(string: text, attributes: dict)
            var dict2 = [NSAttributedStringKey: Any]()
            dict2[NSAttributedStringKey.foregroundColor] = UIColor.blue
            dict2[NSAttributedStringKey.font] = UIFont.systemFont(ofSize: 15)
            dict2[NSAttributedStringKey.underlineStyle] = NSUnderlineStyle.styleSingle.rawValue
            dict2[NSAttributedStringKey.underlineColor] = UIColor.black

            var dict3 = [NSAttributedStringKey: Any]()
            dict3[NSAttributedStringKey.foregroundColor] = UIColor.gray
            dict3[NSAttributedStringKey.font] = UIFont.systemFont(ofSize: 10)

            var dict4 = [NSAttributedStringKey: Any]()
            dict4[NSAttributedStringKey.foregroundColor] = UIColor.blue
            dict4[NSAttributedStringKey.font] = UIFont.systemFont(ofSize: 15)
            dict4[NSAttributedStringKey.strikethroughStyle] = NSUnderlineStyle.styleSingle.rawValue
            dict4[NSAttributedStringKey.strikethroughColor] = UIColor.black
            dict4[NSAttributedStringKey.backgroundColor] = UIColor.yellow

            var dict5 = [NSAttributedStringKey: Any]()
            dict5[NSAttributedStringKey.backgroundColor] = UIColor.darkGray
            self.label.attributedText = attributedText.append("123.00", dict2).append("起", dict3).append("12345.00", dict4).append(dict5).append("15", nil)
        }

        addAction(title: "属性测试") {

            let attributedText = NSAttributedString()

            self.label.font = UIFont.systemFont(ofSize: 15)
            self.label.numberOfLines = 0
            self.label.attributedText = attributedText.append("A", { (content) in
                let paragraphStyle = NSMutableParagraphStyle()
                paragraphStyle.firstLineHeadIndent = 15
                content.paragraphStyle = paragraphStyle
            }).append("B", { (content) in
                content.font = UIFont.systemFont(ofSize: 20)
                content.foregroundColor = UIColor.red
                content.backgroundColor = UIColor.yellow
            }).append("fl", { (content) in
                content.font = UIFont.init(name: "futura", size: 20)
                content.ligature = 0
            }).append("fl", { (content) in
                content.font = UIFont.init(name: "futura", size: 20)
                content.ligature = 4
            }).append("cc", { (content) in
                content.kern = 2
            }).append("cc", { (content) in
                content.kern = 0.5
            }).append("ee", { (content) in
                content.strikethroughStyle = NSUnderlineStyle.styleSingle
                content.strikethroughColor = UIColor.red
                content.font = UIFont.systemFont(ofSize: 20)
            }).append("ll", { (content) in
                content.underlineStyle = NSUnderlineStyle.styleSingle
                content.underlineColor = UIColor.red
                content.font = UIFont.systemFont(ofSize: 20)
            }).append("E", { (content) in
                content.strokeColor = UIColor.red
//                content.foregroundColor = UIColor.blue 字体颜色失效
                content.strokeWidth = 5
                content.backgroundColor = UIColor.yellow
                content.font = UIFont.systemFont(ofSize: 40)
            }).append("F", { (content) in
                let shadow = NSShadow()
                shadow.shadowOffset = CGSize(width: 20, height: 20)
                shadow.shadowBlurRadius = 4
                shadow.shadowColor = UIColor.blue
                content.font = UIFont.systemFont(ofSize: 40)
                content.shadow = shadow
            }).append("Hello,中秋节!", { (content) in
                content.font = UIFont.systemFont(ofSize: 40)
                content.textEffect = .letterpressStyle
                content.foregroundColor = UIColor.gray
            })
        }

        addAction(title: "排版测试") {
            let attributedText = NSAttributedString()

            self.label.font = UIFont.systemFont(ofSize: 15)
            self.label.numberOfLines = 0
            self.label.attributedText = attributedText.append("百度", { (content) in
                content.link = "www.baidu.com"
            }).append("T", { (content) in
                content.baselineOffset = 10
            }).append("T", { (content) in
//                content.baselineOffset = 0
            }).append("T", { (content) in
                content.baselineOffset = -10
            }).append("H", { (content) in
                content.obliqueness = 0.5
            }).append("H", { (content) in
//                content.obliqueness = 0
            }).append("H", { (content) in
                content.obliqueness = -0.5
            }).append("     ", { (content) in

            }).append("D", { (content) in
                content.expansion = 0.5
            }).append("D", { (content) in
//                content.expansion = -0.5
            }).append("D", { (content) in
                content.expansion = -0.5
            }).append("lt ", { (content) in
                content.writingDirection = 0
            }).append("lt ", { (content) in
                content.writingDirection = 1
            }).append("lt ", { (content) in
                content.writingDirection = 2
            }).append("lt ", { (content) in
                content.writingDirection = 3
            }).append("", { (content) in
                let attachment = NSTextAttachment()
                attachment.bounds = CGRect(x: 0, y: 0, width: 40, height: 40)
                attachment.image = self.imageWithColor(UIColor.red, size: CGSize.init(width: 20, height: 20), alpha: 1)
                content.attachment = attachment
            }).append("over", { (content) in
//                content.writingDirection = 3
            }).append("AA", { (content) in
                let attachment = NSTextAttachment()
                attachment.bounds = CGRect(x: 0, y: 0, width: 40, height: 40)
                attachment.image = self.imageWithColor(UIColor.blue, size: CGSize.init(width: 20, height: 20), alpha: 1)
                content.attachment = attachment
            })
        }

        addAction(title: "附件") {
            let attr = NSMutableAttributedString(string: "name", attributes: nil)
            let attachment = NSTextAttachment()
            attachment.bounds = CGRect(x: 0, y: 0, width: 40, height: 40)
            attachment.image = self.imageWithColor(UIColor.red, size: CGSize.init(width: 20, height: 20), alpha: 1)

            self.label.attributedText = attr.appendAttachment(attachment).append({ (content) in
                let attachment2 = NSTextAttachment()
                attachment2.bounds = CGRect(x: 0, y: 0, width: 20, height: 20)
                attachment2.image = self.imageWithColor(UIColor.blue, size: CGSize.init(width: 20, height: 20), alpha: 1)
                content.attachment = attachment2
            })
        }

        addAction(title: "删除线") {
            self.label.attributedText = NSAttributedString(string: "name").appendDeleteLine()
        }

    }

     func imageWithColor(_ color: UIColor, size: CGSize, alpha: CGFloat) -> UIImage {
        let rect = CGRect(x: 0, y: 0, width: size.width, height: size.height)

        UIGraphicsBeginImageContext(rect.size)
        let ref = UIGraphicsGetCurrentContext()
        ref!.setAlpha(alpha)
        ref!.setFillColor(color.cgColor)
        ref!.fill(rect)

        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()

        return image!
    }


    func test(closure: (String) -> Void) {

//        closure("zhang")
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
