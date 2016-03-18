//
//  User.swift
//  SpeakApp
//
//  Created by Aaron Eliason on 3/7/16.
//  Copyright © 2016 IlasonApps. All rights reserved.
//

import Foundation
class User: FirebaseType {
    let kUsername: String = "username"
    let kConversation: String = "conversations"
    
    
    let username: String // name of username
    var conversationIDs: [String] = [] //conversation ids the user is apart of
    var conversations: [Conversation] = [] // conversation names the user is apart of
    var identifier: String? // Where the users auto id data is stored
    var endpoint: String { // where to put the saved data
        return "users"
    }
    // Save to firebase
    var jsonValue: [String: AnyObject] {
        return[kUsername: username, kConversation: conversationIDs]
    }
    init(username: String) {
        self.username = username
    }
    
    //Retrieve From Firebase
    required init?(json: [String: AnyObject], identifier: String) {
        guard let username = json[kUsername] as? String else {
            self.username = ""
            return nil
        }
        self.identifier = identifier
        self.username = username
    }
    
}
