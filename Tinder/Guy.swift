//
//  Guy.swift
//  Tinder
//
//  Created by lkcsdvd on 2022. 08. 02..
//  Copyright © 2022. lkcsdvdProductions. All rights reserved.
//

import Foundation
import SwiftUI

class Guy
{
    private var profilePicture:Image
    private var name:String
    private var likes:Int
    private var totalVotes:Int
    private var age:Int
    
    init(age:Int,name:String,profilePictureString:String){
        self.age = age
        self.name = name
        self.profilePicture = Image(profilePictureString)
        self.totalVotes = 0 // TODO:backend
        self.likes = 0 // TODO:backend
    }
    
    func getPicture() -> Image
    {
        return profilePicture
    }
    
    func getName() -> String
    {
        return name
    }
    
    func getAge() -> String
    {
        return String(age)
    }
    
    func like()
    {
        self.totalVotes += 1
        self.likes += 1
    }
    
    func dislike()
    {
        self.totalVotes += 1
    }
}
