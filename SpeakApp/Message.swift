//
//  Message.swift
//  SpeakApp
//
//  Created by Aaron Eliason on 3/7/16.
//  Copyright © 2016 IlasonApps. All rights reserved.
//

import Foundation

class Message {
    
    let conversationID: String
    let text: String
    let senderID: String
    var sender: User?
    
    var identifier: String?
    var endpoint: String {
        return "messages"
    }
    
    
    init(text: String, senderID: String, conversationID: String) {
        self.text = text
        self.senderID = senderID
        self.conversationID = conversationID
    }
}
