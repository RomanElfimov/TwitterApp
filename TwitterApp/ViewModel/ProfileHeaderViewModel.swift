//
//  ProfileHeaderViewModel.swift
//  TwitterApp
//
//  Created by Роман Елфимов on 21.10.2021.
//

import UIKit

// Опции для фильтрации в Profile View

enum ProfileFilterOptions: Int, CaseIterable {
    case tweets
    case replies
    case likes
    
    var description: String {
        switch self {
        case .tweets: return "Tweets"
        case .replies: return "Tweets & Replies"
        case .likes: return "Likes"
        }
    }
}


struct ProfileHeaderViewModel {
    
    private let user: User
    
    let userNameText: String
    
    var followersString: NSAttributedString? {
        return attributedText(withValue: 0, text: "followers")
    }
    
    var followingString: NSAttributedString? {
        return attributedText(withValue: 2, text: "following")
    }
    
    // follow / unfollow button
    var actionButtonTitle: String {
        // if user is current user then set to edit profile
        // else figure out following/not following
        
        if user.isCurrentUser {
            return "Edit Profile"
        } else {
            return "Follow"
        }
    }
    
    init(user: User) {
        self.user = user
        
        self.userNameText = "@" + user.username
    }
    
    
    fileprivate func attributedText(withValue value: Int, text: String) -> NSAttributedString {
        let attributedTitle = NSMutableAttributedString(string: "\(value)",
                                       attributes: [.font: UIFont.boldSystemFont(ofSize: 14)])
        attributedTitle.append(NSAttributedString(string: " \(text)",
                                        attributes: [.font: UIFont.systemFont(ofSize: 14), .foregroundColor: UIColor.lightGray]))
        
        return attributedTitle
    }
    
}
