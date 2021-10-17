//
//  User.swift
//  TwitterApp
//
//  Created by Роман Елфимов on 17.10.2021.
//

import Foundation

struct User {
    
    let fullname: String
    let email: String
    let username: String
    var profileImageUrl: URL?
    let uid: String
    
    // use dictionary for initialize User
    init(uid: String, dictionary: [String: AnyObject]) {
       
        self.uid = uid
        
        self.fullname = dictionary["fullname"] as? String ?? ""
        self.email = dictionary["email"] as? String ?? ""
        self.username = dictionary["username"] as? String ?? ""
        
        if let profileImageUrlString = dictionary["profileImageUrl"] as? String {
            guard let url = URL(string: profileImageUrlString) else { return }
            self.profileImageUrl = url
        }
    }
    
}
