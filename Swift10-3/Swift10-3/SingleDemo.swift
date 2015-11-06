//
//  SingleDemo.swift
//  Swift10-3
//
//  Created by Cobb on 15/7/17.
//  Copyright © 2015年 Cobb. All rights reserved.
//

import Cocoa

class SingleDemo: NSObject {
    
    var name: String?
    
    //单例
    class var shareSingleDemo: SingleDemo {
        struct Static {
            static var onceToken: dispatch_once_t = 0
            static var instance: SingleDemo? = nil
        }
        dispatch_once(&Static.onceToken) {
            Static.instance = SingleDemo()
        }
        return Static.instance!
    }

}
