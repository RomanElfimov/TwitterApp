//
//  Constants.swift
//  TwitterApp
//
//  Created by Роман Елфимов on 16.10.2021.
//

import Firebase

let DB_REF = Database.database().reference()
let REF_USERS = DB_REF.child("users")

// for image
let STORAGE_REF = Storage.storage().reference()
let STORAGE_PROFILE_IMAGES = STORAGE_REF.child("profile_images")

// upload tweet
let REF_TWEETS = DB_REF.child("tweets")
