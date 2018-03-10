//
//  String+LTExtension.swift
//  LTExtensionDemo
//
//  Created by TopSky on 2018/2/27.
//  Copyright © 2018年 TopSky. All rights reserved.
//

import Foundation

public extension String {

    /**
     去除空白字符串
     */
    func trim() -> String {
        return trimmingCharacters(in: .whitespaces)
    }

    /**
     去除换行和空白字符串
     */
    func completeTrim() -> String {
        var result = replace("\n", "")
        result = result.replace("\r", "")
        result = result.replace("\t", "")
        return result.trimmingCharacters(in: .whitespaces)
    }

    /**
     替换字符串
     */
    func replace(_ target: String, _ replacement: String) -> String {
        return replacingOccurrences(of: target, with: replacement)
    }


    /**
     截取字符串
     */
    subscript (from: Int, to: Int) -> String {
        let f = min(max(0, from), self.count - 1)
        let t = min(max(0, to), self.count - 1)
        let fromIndex = index(self.startIndex, offsetBy: f)
        let toIndex = index(self.startIndex, offsetBy: t)
        var range: ClosedRange<String.Index>
        if f > t {
            range = toIndex...fromIndex
        } else {
            range = fromIndex...toIndex
        }
        return String(self[range])
    }

}


// MARK: - 数据转换
public extension String {

    /**
     整型
     */
    var intValue: Int? {
        return Int(self)
    }

    /**
     获取整型
     默认0
     */
    func getIntValue(_ defaultValue: Int = 0) -> Int {
        return intValue ?? defaultValue
    }

    /**
     Float
     */
    var floatValue: Float? {
        return Float(self)
    }

    /**
     获取Float
     默认0
     */
    func getFloatValue(_ defaultValue: Float = 0) -> Float {
        return floatValue ?? defaultValue
    }

    /**
     Double
     */
    var doubleValue: Double?{
        return Double(self)
    }

    /**
     获取Double
     默认0
     */
    func getDoubleValue(_ defaultValue: Double = 0) -> Double {
        return doubleValue ?? defaultValue
    }
}









