//
//  ContentView.swift
//  asd
//
//  Created by lkcsdvd on 2022. 07. 10..
//

import SwiftUI




struct ContentView: View {

    
    var body: some View {
        VStack{
            //Header
            Spacer()
            Image("appTitle")
            
            //Card
            ZStack {
                ForEach(Guy.guyContainer.reversed()) {
                    item in Cardview(actualGuy:item)
                        .padding(8)
                        .zIndex(1.0)
                }
            }
            
            //Buttons
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
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
