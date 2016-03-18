//
//  Message.swift
//  SpeakApp
//
//  Created by Aaron Eliason on 3/7/16.
//  Copyright © 2016 IlasonApps. All rights reserved.
//

import Foundation

class Message: FirebaseType {
    let kConversation: String = "conversation"
    let kText: String = "text"
    let kSender: String = "sender"
    
    let conversationID: String // Firebases auto ID for the conversation
    let text: String // The content of the message
    let senderID: String // Firebases auto ID for the userSenderID
    var sender: User? //name of the person sedning a message
    
    var identifier: String? //fire bases auto identifier
    var endpoint: String { // where the data should be saved.
        return "messages"
    }
    
    var jsonValue: [String: AnyObject]{
        return [kConversation: conversationID, kText: text, kSender: senderID]
    }
    
    
    init(text: String, senderID: String, conversationID: String) {
        self.text = text
        self.senderID = senderID
        self.conversationID = conversationID
    }
    
    required init?(json: [String : AnyObject] , identifier: String) {
        guard let text = json[kText] as? String,
        senderID = json[kSender] as? String,
            conversationID = json[kConversation] as? String else{
                self.conversationID = ""
                self.text = ""
                self.senderID = ""
                return nil
        }
        self.text = text
        self.senderID = senderID
        self.conversationID = conversationID
    }
}
