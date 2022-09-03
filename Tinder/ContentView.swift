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
                          Guy(age: 21, name: "Szekeres Ákos", profilePictureString: "SzAkos" ),
                          Guy(age: 21, name: "Magyar Tamás", profilePictureString: "MTamas" )
]

struct ContentView: View {
    @State var actualGuy = guyContainer[0]
    private var imageSize : CGFloat = 350
    private var boundSize : CGFloat = 200
    @State private var currentOpacity:CGFloat = 1
    @State private var currentColor = Color.green
    var dragGesture: some Gesture {
        DragGesture()
            .onChanged { value in
                withAnimation(.default){
                    actualGuy.x = value.translation.width
                    actualGuy.y = value.translation.height
                    actualGuy.degree = 7 * (value.translation.width > 0 ? 1 : -1)
                self.currentOpacity = 1 - abs(offset.width/100)
                self.currentColor = value.translation.width > 0 ? .green : .red
                if(value.translation.width>boundSize)
                {
                    /*handleLike()
                    offset=CGSize.zero
                    self.isDragging=false
                    self.ignoreDragging = true
                    self.currentOpacity = 1
                }
                else if(value.translation.width<(-1*boundSize)){
                    handleDislike()
                    offset=CGSize.zero
                    self.isDragging=false
                    self.ignoreDragging = true
                    self.currentOpacity = 1*/
                }
                }
                
            }
            .onEnded{value in
                offset=CGSize.zero
                self.currentOpacity=1
            }
               
        }
    
    func getNewGuy()
    {
        let prevGuy = actualGuy
        while(prevGuy.getName() == actualGuy.getName())
        {
            actualGuy = guyContainer.randomElement()!
        }
        
    }
    
    func handleDislike()
    {
        actualGuy.dislike()
        print(actualGuy.getName())
        //getNewGuy()
    }
    
    func handleLike()
    {
        actualGuy.like()
        print("like")
        print(actualGuy.getName())
        //getNewGuy()
    }
    
    var body: some View {
        VStack{
            Spacer()
            Image("appTitle")
            ZStack{
                //ForEach(guyContainer.shuffled(), id: \.self){ card in
                actualGuy.getPicture().resizable().padding()
                    Text(actualGuy.getName() + ", " + actualGuy.getAge()).bold().colorInvert().padding(.top, 785).position(x: 90)
                }.gesture(dragGesture).offset(x: actualGuy.x, y: actualGuy.y)

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
        }.background(currentColor.opacity(1-currentOpacity))
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
