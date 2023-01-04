//
//  Guy.swift
//  Tinder
//
//  Created by lkcsdvd on 2022. 08. 02..
//  Copyright © 2022. lkcsdvdProductions. All rights reserved.
//

import Foundation
import SwiftUI

struct Guy: Identifiable
{
    
    let id = UUID()
    let profilePictureString:String
    let name:String
    var likes:Int
    var totalVotes:Int
    let age:String
    var x: CGFloat
    var y: CGFloat
    var degree : Double
    
    
    init(age:Int,name:String,profilePictureString:String){
        self.age = String(age)
        self.name = name
        self.profilePictureString = profilePictureString
        self.totalVotes = 0 // TODO:backend
        self.likes = 0 // TODO:backend
        self.x = 0
        self.y = 0
        self.degree = 0
    }
    
    static var guyContainer:[Guy] = [Guy(age: 21, name: "Vízkeleti Bálint", profilePictureString: "VBalint" ),
                                         Guy(age: 23, name: "Lukács Dávid", profilePictureString: "LDavid" ),
                                         Guy(age: 94, name: "Südi Bence", profilePictureString: "SBence" ),
                                         Guy(age: 21, name: "Ladomérszky Bence", profilePictureString: "LBence" ),
                                         Guy(age: 22, name: "Tóth Andor", profilePictureString: "TAndor" ),
                                         Guy(age: 25, name: "Varga Marcell", profilePictureString: "VMarci" ),
                                         Guy(age: 20, name: "Szalánczi Álmos", profilePictureString: "SzAlmos" ),
                                         Guy(age: 23, name: "Deák Szilárd", profilePictureString: "DSzilard" ),
                                         Guy(age: 21, name: "Rátfai Levente", profilePictureString: "RLevi" ),
                                         Guy(age: 21, name: "Beke Gábor", profilePictureString: "BGabor" ),
                                         Guy(age: 21, name: "Berecz Dénes", profilePictureString: "BDenes" ),
                                         Guy(age: 21, name: "Szekeres Ákos", profilePictureString: "SzAkos" ),
                                         Guy(age: 21, name: "Magyar Tamás", profilePictureString: "MTamas" )
   ]
}
