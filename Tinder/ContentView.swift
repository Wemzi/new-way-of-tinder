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
    private var imageSize : CGFloat = 350
    private var boundSize : CGFloat = 200
    @State private var currentOpacity:CGFloat = 1
    @State private var currentColor = Color.green
    
    func handleDislike(actualGuy: Guy)
    {
        actualGuy.dislike()
        print(actualGuy.getName())
        //getNewGuy()
    }
    
    func handleLike(actualGuy: Guy)
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
            ZStack {
                ForEach(guyContainer.reversed()) {
                    item in Cardview(actualGuy:item)
                        .padding(8)
                        .zIndex(1.0)
                }
            }
            HStack(spacing: 0){
                Spacer()
                Button(action: {
                    //self.handleDislike(actualGuy:actualGuy)
                }, label:{
                    Image("Dislike")
                })
                Spacer()
                Button(action: {
                    //self.handleLike(actualGuy:actualGuy)
                }, label: {
                    Image("Like")
                })
                Spacer()
            }
        }.background(currentColor.opacity(1-currentOpacity))
        
    }
}

struct Cardview: View {
    @State var actualGuy : Guy
    let cardGradient = Gradient(colors: [Color.black.opacity(0), Color.black.opacity(0.5)])
    var body : some View {
        ZStack(alignment: .topLeading){
            //ForEach(guyContainer.shuffled(), id: \.self){ card in
            actualGuy.getPicture().resizable()
            LinearGradient(gradient:cardGradient, startPoint: .top, endPoint: .bottom)
            VStack{
                Spacer()
                VStack(alignment : .leading)
                {
                    HStack {
                        Text (actualGuy.getName()).font(.largeTitle).fontWeight(.bold)
                        Text(actualGuy.getAge()).font(.title)
                    }
                    Text("🤮Buzi vagyok, group chatbe ne hívjatok🤮")
                }
            }
            .padding()
            .foregroundColor(.white)
        }
        .cornerRadius(8)
        .offset(x: actualGuy.x, y:actualGuy.y)
        .rotationEffect(.init(degrees: actualGuy.degree))
        .gesture(
            DragGesture()
                .onChanged { value in
                    withAnimation(.default){
                        actualGuy.x = value.translation.width
                        actualGuy.y = value.translation.height
                        actualGuy.degree = 7 * (value.translation.width > 0 ? 1 : -1)
                        //self.currentColor = value.translation.width > 0 ? .green : .red
                        /*if(value.translation.width>boundSize)
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
                         }*/
                    }
                }
        )
        }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
