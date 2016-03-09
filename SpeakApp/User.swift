//
//  User.swift
//  SpeakApp
//
//  Created by Aaron Eliason on 3/7/16.
//  Copyright © 2016 IlasonApps. All rights reserved.
//

import Foundation
struct User: Equatable {
    var username: String = ""
    var caption: String?
    var identifier: String?
    
    init(username: String, caption: String? = nil, uid: String?){
        self.username = username
        self.caption = caption
        self.identifier = uid
        
    }
    
}

func ==(lhs: User, rhs: User) -> Bool {
    return (lhs.username == rhs.username) && (lhs.identifier == rhs.identifier)
}