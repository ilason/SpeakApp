//
//  Message.swift
//  SpeakApp
//
//  Created by Aaron Eliason on 3/7/16.
//  Copyright © 2016 IlasonApps. All rights reserved.
//

import Foundation

struct Message {
    
    var username: String
    var text: String
    var identifier: String?
    
    
    init(username: String, text: String, identifier: String? = nil) {
        self.username = username
        self.text = text
        self.identifier = identifier
    }
}
