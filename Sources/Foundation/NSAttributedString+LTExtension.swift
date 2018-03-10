//
//  NSAttributedString+Extension.swift
//  LTExtensionDemo
//
//  Created by TopSky on 2018/2/27.
//  Copyright © 2018年 TopSky. All rights reserved.
//

import Foundation
import UIKit

public class NSAttributedContent {

    /**
     字号
     */
    var font: UIFont?

    /**
     段落格式
     */
    var paragraphStyle: NSParagraphStyle?

    /**
     字体颜色
     */
    var foregroundColor: UIColor?

    /**
     背景颜色
     */
    var backgroundColor: UIColor?

    /**
     是否 使用 连接字符 默认值： 1
     0: 不使用
     1: 默认连接子符
     */
    var ligature: Int?

    /**
     字间距 浮点 默认值： 0
     0: 不使用字母紧排
     */
    var kern: CGFloat?

    /**
     删除线
     */
    var strikethroughStyle:  NSUnderlineStyle?

    /**
     删除线颜色
     */
    var strikethroughColor: UIColor?

    /**
     下划线
     */
    var underlineStyle: NSUnderlineStyle?

    /**
     下划线颜色
     */
    var underlineColor: UIColor?

    /**
     填充颜色
     */
    var strokeColor: UIColor?
    /** 描边宽度 默认值： 0
     负值填充， 正值中空
     */
    var strokeWidth: CGFloat?

    /**
     阴影
     */
    var shadow: NSShadow?

    /**
     文字特殊效果 目前只有图版印刷效果可用
     */
    var textEffect: NSAttributedString.TextEffectStyle?

    /**
     文本附件
     */
    var attachment: NSTextAttachment?

    /**
     文本链接
     */
    var link: NSString?

    /**
     文本基准线 默认值： 0
     正值： 上偏
     负值： 下偏
     */
    var baselineOffset: CGFloat?

    /**
     倾斜度 默认值 0
     正值： 右倾
     负值： 左倾
     */
    var obliqueness: CGFloat?
    

    /**
     扁平化
     */
    var expansion: CGFloat?

    /**
     书写方向
     0: LRE
     1: RLE
     2: LRO
     3: RLO
     */
    var writingDirection: Int?

    /**
     排版方向 默认0 Currently on iOS, it's always horizontal.
     0: 水平排版
     1: 垂直排版
     */
    var verticalGlyphForm: Int?

}

public extension NSAttributedString {

    /**
     拼接 字符串 和 属性
     string: 拼接内容
     dict: 描述属性
     */
    func append(_ string: String, _ dict: [NSAttributedStringKey: Any]?) -> NSAttributedString {
        let lhs = NSMutableAttributedString(attributedString: self)
        let rhs = NSAttributedString(string: string, attributes: dict)
        lhs.append(rhs)
        return lhs
    }

    /**
     拼接属性 在原有的基础上
     dict: 描述属性
     */
    func append(_ dict: [NSAttributedStringKey: Any]) -> NSAttributedString {
        let lhs = NSMutableAttributedString(attributedString: self)
        let range = NSRange(location: 0, length: self.string.count)
        lhs.addAttributes(dict, range: range)
        return lhs
    }


    /**
     拼接 字符串 和 属性
     string: 拼接内容
     closure: 描述属性闭包 可增加修改属性
     */
    func append(_ string: String, _ closure: (NSAttributedContent) -> Void) -> NSAttributedString {
        let content = NSAttributedContent()
        closure(content)
        let dict = getAttributedDictionay(content)
        return self.append(string, dict).appendAttachment(content.attachment)
    }

    /**
     拼接属性 在原有的基础上
     closure: 描述属性闭包 可增加修改属性
     */
    func append(_ closure: (NSAttributedContent) -> Void) -> NSAttributedString {
        let content = NSAttributedContent()
        closure(content)
        let dict = getAttributedDictionay(content)
        return self.append(dict).appendAttachment(content.attachment)
    }

    /**
     拼接附件
     */
    func appendAttachment(_ attachment: NSTextAttachment?) -> NSAttributedString {
        guard let resultAttachment = attachment else {
            return self
        }
        let lhs = NSMutableAttributedString(attributedString: self)
        let rhs = NSAttributedString(attachment: resultAttachment)
        lhs.append(rhs)
        return lhs
    }


    /**
     容器属性映射字典 content convert to Dictionary
     */
    fileprivate func getAttributedDictionay(_ content: NSAttributedContent) -> [NSAttributedStringKey: Any] {
        var dict = [NSAttributedStringKey: Any]()
        dict[.font] = content.font
        dict[.paragraphStyle] = content.paragraphStyle
        dict[.foregroundColor] = content.foregroundColor
        dict[.backgroundColor] = content.backgroundColor
        dict[.ligature] = content.ligature
        dict[.kern] = content.kern
        dict[.strikethroughStyle] = content.strikethroughStyle?.rawValue
        dict[.strikethroughColor] = content.strikethroughColor
        dict[.underlineStyle] = content.underlineStyle?.rawValue
        dict[.underlineColor] = content.underlineColor
        dict[.strokeColor] = content.strokeColor
        dict[.strokeWidth] = content.strokeWidth
        dict[.shadow] = content.shadow
        dict[.textEffect] = content.textEffect
//        dict[.attachment] = content.attachment
        dict[.link] = content.link
        dict[.baselineOffset] = content.baselineOffset
        dict[.obliqueness] = content.obliqueness
        dict[.expansion] = content.expansion
        if let writingDirection = content.writingDirection {
            dict[.writingDirection] = [writingDirection]
        }
        dict[.verticalGlyphForm] = content.verticalGlyphForm
        return dict
    }


    /**
     拼接
     */
    func appendDeleteLine(_ style: NSUnderlineStyle = NSUnderlineStyle.styleSingle, _ color: UIColor? = nil) -> NSAttributedString {
        return self.append { (content) in
            content.strikethroughStyle = style
            content.strikethroughColor = color
        }
    }

    
}
