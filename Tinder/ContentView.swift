//
//  ContentView.swift
//  asd
//
//  Created by lkcsdvd on 2022. 07. 10..
//

import SwiftUI

let guyContainer:[Guy] = [Guy(age: 21, name: "Vízkeleti Bálint", profilePictureString: "VBalint" ),
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
                          Guy(age: 21, name: "Szekeres Ákos", profilePictureString: "SzAkos" )
]

struct ContentView: View {
    @State var actualGuy = guyContainer[0]
    
    func getNewGuy()
    {
        var prevGuy = actualGuy
        while(prevGuy.getName() == actualGuy.getName())
        {
            actualGuy = guyContainer.randomElement()!
        }
        
    }
    
    func handleDislike()
    {
        actualGuy.dislike()
        print(actualGuy.getName())
        getNewGuy()
    }
    
    func handleLike()
    {
        actualGuy.like()
        print(actualGuy.getName())
        getNewGuy()
    }
    
    var body: some View {
        VStack{
            Spacer()
            Image("appTitle")
            actualGuy.getPicture().resizable().padding()
            Text(actualGuy.getName() + ", " + actualGuy.getAge()).bold()
            HStack{
                Spacer()
                Button(action: {
                    self.handleDislike()
                }, label:{
                    Image("Dislike")
                })
                Spacer()
                Button(action: {
                    self.handleLike()
                }, label: {
                    Image("Like")
                })
                Spacer()
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
