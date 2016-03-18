//
//  UserController.swift
//  SpeakApp
//
//  Created by Aaron Eliason on 3/7/16.
//  Copyright © 2016 IlasonApps. All rights reserved.
//

import Foundation

class UserController {
    // Put in functions\
    
    static func createUser(username: String, password: String, email: String, caption: String?, completion:(success: Bool, user: User?) -> Void) {
        
    }
    
    static func fetchUserForIdentifier(identifier: String, completion:(user: User?) -> Void) {
        
    }
    
    static func observeConversationsForUser(user: User, completion: () -> Void) {
        
    }
  
    
    static func followUser(user: User, completion: (succes: Bool) -> Void) {
        
    }
    
    static func unfollowUser(user: User, completion: (success: Bool) -> Void) {
        
    }
    
    static func userFollowsUser(user: User, followsUser: User, completion: (follows: Bool) -> Void) {
        
    }
    
    
    
    

}