//
//  ContentView.swift
//  asd
//
//  Created by lkcsdvd on 2022. 07. 10..
//

import SwiftUI

let guyContainer:[Guy] = [Guy(age: 21, name: "Vízkeleti Bálint", profilePictureString: "VBalint" ),
                          Guy(age: 23, name: "Lukács Dávid", profilePictureString: "LDavid" ),
                          Guy(age: 94, name: "Südi Bence", profilePictureString: "VBalint" ),
                          Guy(age: 21, name: "Ladomérszky Bence", profilePictureString: "VBalint" ),
                          Guy(age: 22, name: "Tóth Andor", profilePictureString: "VBalint" ),
                          Guy(age: 25, name: "Varga Marcell", profilePictureString: "VBalint" ),
                          Guy(age: 20, name: "Szalánczi Álmos", profilePictureString: "VBalint" ),
                          Guy(age: 23, name: "Deák Szilárd", profilePictureString: "VBalint" ),
                          Guy(age: 21, name: "Rátfai Levente", profilePictureString: "VBalint" ),
                          Guy(age: 21, name: "Beke Gábor", profilePictureString: "VBalint" ),
                          Guy(age: 21, name: "Vízkeleti Bálint", profilePictureString: "VBalint" ),
                          Guy(age: 21, name: "Vízkeleti Bálint", profilePictureString: "VBalint" ),
                          Guy(age: 21, name: "Vízkeleti Bálint", profilePictureString: "VBalint" ),
                          Guy(age: 21, name: "Vízkeleti Bálint", profilePictureString: "VBalint" ),
]

struct ContentView: View {
    @State var actualGuy = guyContainer[0]
    
    func handleDislike()
    {
        actualGuy.dislike()
        print(actualGuy.getName())
        actualGuy = guyContainer.randomElement()!
    }
    
    func handleLike()
    {
        actualGuy.like()
        print(actualGuy.getName())
        actualGuy = guyContainer.randomElement()!
    }
    
    var body: some View {
        VStack{
            Image("appTitle")
            actualGuy.getPicture().padding()
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
