//
//  CardView.swift
//  Tinder
//
//  Created by lkcsdvd on 2023. 01. 03..
//  Copyright © 2023. lkcsdvdProductions. All rights reserved.
//

import Foundation
import SwiftUI

struct Cardview: View {
    @State var actualGuy : Guy
    let cardGradient = Gradient(colors: [Color.black.opacity(0), Color.black.opacity(0.5)])
    
    var body : some View {
        ZStack(alignment: .topLeading){
            Image(self.actualGuy.profilePictureString).resizable()
            LinearGradient(gradient:cardGradient, startPoint: .top, endPoint: .bottom)
            VStack{
                Spacer()
                VStack(alignment : .leading)
                {
                    HStack {
                        Text (self.actualGuy.name).font(.largeTitle).fontWeight(.bold)
                        Text(self.actualGuy.age).font(.title)
                    }
                    Text("🤮Buzi vagyok, group chatbe ne hívjatok🤮")
                }
            }
            .padding()
            .foregroundColor(.white)
        }
        .cornerRadius(8)
        .offset(x: self.actualGuy.x, y:self.actualGuy.y)
        .rotationEffect(.init(degrees: self.actualGuy.degree))
        .gesture(
            DragGesture()
                .onChanged { value in withAnimation(.default){
                    self.actualGuy.x = value.translation.width
                    self.actualGuy.y = value.translation.height
                    self.actualGuy.degree = 7 * (value.translation.width > 0 ? 1 : -1)
                    print("called onChanged on " + self.actualGuy.name + "  " + String(self.actualGuy.x.description))
                    }
                }
                .onEnded { (value) in
                                    withAnimation(.interpolatingSpring(mass: 1.0, stiffness: 50, damping: 8, initialVelocity: 0)) {
                                        switch value.translation.width {
                                        case 0...100:
                                            self.actualGuy.x = 0; self.actualGuy.degree = 0; self.actualGuy.y = 0
                                        case let x where x > 100:
                                            self.actualGuy.handleLike()
                                        case (-100)...(-1):
                                            self.actualGuy.x = 0; self.actualGuy.degree = 0; self.actualGuy.y = 0
                                        case let x where x < -100:
                                            self.actualGuy.handleDislike()
                                        default:
                                            self.actualGuy.x = 0; self.actualGuy.y = 0
                                        }
                                    }
                                }
        )
        Spacer()
    }
    
    public func handleLike()
    {
        withAnimation(.interpolatingSpring(mass: 1.0, stiffness: 50, damping: 8, initialVelocity: 0)){
            self.actualGuy.handleLike()}
    }

    public func handleDislike()
    {
        withAnimation(.interpolatingSpring(mass: 1.0, stiffness: 50, damping: 8, initialVelocity: 0)){
            self.actualGuy.handleDislike()}
    }
}




struct Cardview_Previews : PreviewProvider {
    static var previews : some View {
        Cardview(actualGuy: Guy.guyContainer[0])
    }
}
