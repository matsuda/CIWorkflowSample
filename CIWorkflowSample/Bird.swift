//
//  Bird.swift
//  CIWorkflowSample
//
//  Created by Kosuke Matsuda on 2017/05/02.
//  Copyright © 2017年 matsuda. All rights reserved.
//

import Foundation

protocol Flyable {
    var isFlying: Bool { get }
    func fly()
}

class Bird: Flyable {
    var isFlying: Bool {
        return _flying
    }
    private var _flying: Bool = false

    func fly() {
        _flying = true
    }
}
