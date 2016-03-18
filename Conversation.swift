//
//  Conversation.swift
//  SpeakApp
//
//  Created by Aaron Eliason on 3/8/16.
//  Copyright © 2016 IlasonApps. All rights reserved.
//

import Foundation

class Conversation: FirebaseType {
    let kName: String = "name"
    let kUsers: String = "users"
    
    
    let name: String //name of the conversation
    var userIDs: [String] = [] // user ids part of the conversation
    var users: [User] = [] // an array of the users apart of the conversation (to be viewed)
    var identifier: String? // firebases auto identifier for the conversation
    var endpoint: String { // Where to point the data to be saved
        return "conversations"
    }
    
    var jsonValue: [String: AnyObject] {
        return [kName: name, kUsers: userIDs]
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
    
    required init?(json: [String: AnyObject], identifier: String) {
        guard let name = json[kName] as? String else {
            self.name = ""
            return nil
        }
        self.name = name
        self.identifier = identifier
        if let usersDictionary = json[kUsers] as? [String: AnyObject] {
            userIDs = Array(usersDictionary.keys)
        }
    }
}

