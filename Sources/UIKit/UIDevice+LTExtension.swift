//
//  UIDevice+LTExtension.swift
//  LTExtensionDemo
//
//  Created by TopSky on 2018/3/9.
//  Copyright © 2018年 TopSky. All rights reserved.
//

import Foundation
import UIKit

public extension UIDevice {

    /**
     系统名称
     */
    static let SystemName: String = UIDevice.current.systemName

    /**
     系统版本
     */
    static let SystemVersion = UIDevice.current.systemVersion

    /**
     系统设备号
     */
    static let uuid = UIDevice.current.identifierForVendor?.uuidString


}
