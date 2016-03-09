//
//  Conversation.swift
//  SpeakApp
//
//  Created by Aaron Eliason on 3/8/16.
//  Copyright © 2016 IlasonApps. All rights reserved.
//

import Foundation

class Conversation {
    
    let name: String
    var userIDs: [String] = []
    var users: [User] = []
    var identifier: String?
    var endpoint: String {
        return "conversations"
    }
    init(name: String, users: [User]) {
        self.name = name
        self.users = users
        var identifiers: [String] = []
        for user in users{
            if let identifier = user.identifier {
                identifiers.append(identifier)
            }
        }
        self.userIDs = identifiers
    }
}

