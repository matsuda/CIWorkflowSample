//
//  User.swift
//  CIWorkflowSample
//
//  Created by Kosuke Matsuda on 2017/05/02.
//  Copyright © 2017年 matsuda. All rights reserved.
//

import Foundation
import Unbox

struct User {
    let login: String
    let id: Int
    let avatarURL: URL
    let htmlURL: URL
    let type: String
    let name: String
    let location: String?
    let email: String?
    let createdAt: Date

    static let unboxDateFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.locale = Locale(identifier: "en_US_POSIX")
        formatter.dateFormat = "yyyy'-'MM'-'dd'T'HH':'mm':'ss'Z'"
        formatter.timeZone = TimeZone(secondsFromGMT: 0)
        return formatter
    }()
}

extension User: Unboxable {
    init(unboxer: Unboxer) throws {
        login = try unboxer.unbox(key: "login")
        id = try unboxer.unbox(key: "id")
        avatarURL = try unboxer.unbox(key: "avatar_url")
        htmlURL = try unboxer.unbox(key: "html_url")
        type = try unboxer.unbox(key: "type")
        name = try unboxer.unbox(key: "name")
        location = unboxer.unbox(key: "location")
        email = unboxer.unbox(key: "email")
        createdAt = try unboxer.unbox(key: "created_at", formatter: User.unboxDateFormatter)
    }
}
