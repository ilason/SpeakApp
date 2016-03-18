//
//  ConversationController.swift
//  SpeakApp
//
//  Created by Aaron Eliason on 3/8/16.
//  Copyright © 2016 IlasonApps. All rights reserved.
//

import Foundation

class ConversationController {
    
    static func fetchConversationForIdentifier(identifier: String, completion:(conversation: Conversation?) -> Void) {
       
    }
    
    static func createConversation(name: String, users: [User], completion: (coversation: Conversation?) -> Void) {
        
    }
    
    static func createMessage(text: String, sender: User, conversation: Conversation, completion:(message: Message?) -> Void) {
        
    }
    
    static func orderMessages(messages: [Message]) -> [Message] {
        return messages.sort({$0.0.identifier > $0.1.identifier})
    }
}