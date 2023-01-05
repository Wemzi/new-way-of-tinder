//
//  ContentView.swift
//  asd
//
//  Created by lkcsdvd on 2022. 07. 10..
//

import SwiftUI

var cardViews: [Cardview] = []

struct ContentView: View {
    
    var body: some View {
        VStack{
            //Header
            Spacer()
            Image("appTitle")
            //Card
            ZStack {
                ForEach(Guy.guyContainer.shuffled()) {
                    item in createCardViewWithAppend(actualGuy: item)
                        .padding(8)
                        .zIndex(1.0)
                }
            }
            //Buttons
            HStack(spacing: 0){
                Spacer()
                Button(action: {
                    @State var asd : Cardview = cardViews.popLast()!
                    dump(asd)
                    asd.handleDislike()
                },label:{
                    Image("Dislike")
                    
                })
                Spacer()
                Button(action: {
                    @State var asd : Cardview = cardViews.popLast()!
                    dump(asd)
                    asd.handleLike()
                }, label: {
                    Image("Like")
                })
                Spacer()
            }
        }
    }
    
    func createCardViewWithAppend(actualGuy: Guy) -> Cardview
    {
        let returnable : Cardview = Cardview(actualGuy: actualGuy)
        cardViews.append(returnable)
        return returnable
    }
    
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
