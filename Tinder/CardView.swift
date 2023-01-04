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
            Image(actualGuy.profilePictureString).resizable()
            LinearGradient(gradient:cardGradient, startPoint: .top, endPoint: .bottom)
            VStack{
                Spacer()
                VStack(alignment : .leading)
                {
                    HStack {
                        Text (actualGuy.name).font(.largeTitle).fontWeight(.bold)
                        Text(actualGuy.age).font(.title)
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
                .onChanged { value in withAnimation(.easeInOut){
                    actualGuy.x = value.translation.width
                    actualGuy.y = value.translation.height
                    actualGuy.degree = 7 * (value.translation.width > 0 ? 1 : -1)
                    print("called onChanged on " + actualGuy.name + "  " + String(actualGuy.x.description))
                    }
                }
                .onEnded { (value) in
                                    withAnimation(.interpolatingSpring(mass: 1.0, stiffness: 50, damping: 8, initialVelocity: 0)) {
                                        switch value.translation.width {
                                        case 0...100:
                                            actualGuy.x = 0; actualGuy.degree = 0; actualGuy.y = 0
                                        case let x where x > 100:
                                            actualGuy.x = 500; actualGuy.degree = 12
                                        case (-100)...(-1):
                                            actualGuy.x = 0; actualGuy.degree = 0; actualGuy.y = 0
                                        case let x where x < -100:
                                            actualGuy.x  = -500; actualGuy.degree = -12
                                        default:
                                            actualGuy.x = 0; actualGuy.y = 0
                                        }
                                    }
                                }
        )
    }
}


struct Cardview_Previews : PreviewProvider {
    static var previews : some View {
        Cardview(actualGuy: Guy.guyContainer[0])
    }
}
