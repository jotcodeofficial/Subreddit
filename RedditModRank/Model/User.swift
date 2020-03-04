//
//  User.swift
//  RedditModRank
//
//  Created by Work on 02/03/2020.
//  Copyright © 2020 JotCode. All rights reserved.
//

import Foundation

private struct RawUser: Decodable {
    var kind: String
    var data: User
}

struct UserResponse: Decodable {
    var user: User

    init(from decoder: Decoder) throws {
        let rawResponse = try RawUser(from: decoder)
        user = rawResponse.data
    }
}

struct User: Codable {
    var name: String
    var iconImg: String
    //var hasVerifiedEmail: Bool
}
