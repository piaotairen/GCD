//
//  PersonOperation.swift
//  Swift10-2
//
//  Created by Cobb on 15/7/17.
//  Copyright © 2015年 Cobb. All rights reserved.
//

import UIKit

class PersonOperation: NSOperation {
    
    override func main() {
        for index in 0...100 {
            print("main线程---\(index)")
        }
    }

}
