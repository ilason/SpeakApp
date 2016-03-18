//
//  MessageController.swift
//  SpeakApp
//
//  Created by Aaron Eliason on 3/9/16.
//  Copyright © 2016 IlasonApps. All rights reserved.
//

import Foundation
import Firebase

// We need our messageController to add messages, fetch messages, and observe the endpoint for a specific thread of new messages.

class MessageController {
    
    static func addMessageToConversation(message: Message, conversation: Conversation, completion: (success: Bool) -> Void) {
        
    }
    
    static func currentMessagesForConversation(conversation: Conversation, completion: (messages: [Message]) -> Void) {
        
    }
    
    static func observeMessageForConversation(conversation: Conversation,updateBlock: (messages: [Message]) -> Void) {
        //Should run the update block each time the data at the thread endpoint is updated
        //useful for creating a live view that updates immediately when messages for a thread update
    }
    
    static func endObservingMessagedForConversation(conversation: Conversation) {
        //stops observing messages
        //useful for ending an observation for a conversation/thread that is no longer being displayed
    }
    
    static func latestMessageInConversation(conversation: Conversation, user: User, completion: (messages: [Message]) -> Void) {
        
    }
}