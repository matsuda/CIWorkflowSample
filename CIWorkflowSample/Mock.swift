//
//  Mock.swift
//  CIWorkflowSample
//
//  Created by Kosuke Matsuda on 2017/05/02.
//  Copyright © 2017年 matsuda. All rights reserved.
//

import Foundation

enum Mock {
    enum FileExt: String {
        case json
    }

    static func load(name: String, ext: Mock.FileExt = .json) -> Any? {
        guard let path = Bundle.main.path(forResource: name, ofType: ext.rawValue) else {
            return nil
        }
        do {
            let text = try String(contentsOfFile: path)
            guard let data = text.data(using: .utf8) else { return nil }
            return try JSONSerialization.jsonObject(with: data, options: [])
        } catch { return nil }
    }
}
