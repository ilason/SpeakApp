//
//  FirebaseController.swift
//  SpeakApp
//
//  Created by Aaron Eliason on 3/8/16.
//  Copyright © 2016 IlasonApps. All rights reserved.
//

import Foundation
import Firebase

class FirebaseController {   static let base = Firebase(url: "https://speakappn.firebaseio.com")
    
    static func dataAtEndPoint(endpoint: String, completion: (data: AnyObject?) -> Void) {
        let baseForEndPoint = FirebaseController.base.childByAppendingPath(endpoint)
        baseForEndPoint.observeSingleEventOfType(.Value, withBlock: {snapshot in
            
            print(snapshot.value)
            
            if snapshot.value is NSNull {
                completion(data: nil)
                
            } else {
                
                completion(data: snapshot.value)
                
            }
            
        })
    }
    
    static func observeDataAtEndPoint(endpoint: String, completion: (data: AnyObject?) -> Void) {
        let baseForEndPoint = FirebaseController.base.childByAppendingPath(endpoint)
        
        baseForEndPoint.observeEventType(.Value, withBlock: { snapshot in
            
            if snapshot.value is NSNull {
                completion(data: nil)
            } else {
                completion(data: snapshot.value)
            }
        })
        
    }
}

protocol FirebaseType {
    var identifier: String? {get set }
    var endpoint: String {get}
    var jsonValue: [String: AnyObject] { get }
    
    init?(json: [String : AnyObject], identifier: String)
    
    mutating func save()
    func delete()
    
}










