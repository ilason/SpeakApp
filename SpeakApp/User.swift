//
//  User.swift
//  SpeakApp
//
//  Created by Aaron Eliason on 3/7/16.
//  Copyright © 2016 IlasonApps. All rights reserved.
//

import Foundation
class User {
    let username: String
    var conversationIDs: [String] = []
    var conversations: [Conversation] = []
    var identifier: String?
    var endpoint: String {
        return "users"
    }
    init(username: String) {
        self.username = username
    }
    
}
