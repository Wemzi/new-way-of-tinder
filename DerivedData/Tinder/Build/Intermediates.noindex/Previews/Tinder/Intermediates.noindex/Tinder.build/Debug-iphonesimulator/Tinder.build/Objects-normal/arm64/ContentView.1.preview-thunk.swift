@_private(sourceFile: "ContentView.swift") import Baszunk_
import SwiftUI
import SwiftUI

extension ContentView_Previews {
    @_dynamicReplacement(for: previews) private static var __preview__previews: some View {
        #sourceLocation(file: "/Users/lkcsdvd/Documents/GitHub/TinderClone/Tinder/ContentView.swift", line: 62)
        ContentView()
    
#sourceLocation()
    }
}

extension ContentView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/lkcsdvd/Documents/GitHub/TinderClone/Tinder/ContentView.swift", line: 30)
        VStack{
            Spacer()
            Image(__designTimeString("#8275.[1].[2].property.[0].[0].arg[0].value.[1].arg[0].value", fallback: "appTitle"))
            ZStack {
                ForEach(Guy.guyContainer.reversed()) {
                    item in Cardview(actualGuy:item)
                        .padding(__designTimeInteger("#8275.[1].[2].property.[0].[0].arg[0].value.[2].arg[0].value.[0].arg[1].value.[0].modifier[0].arg[0].value", fallback: 8))
                        .zIndex(__designTimeFloat("#8275.[1].[2].property.[0].[0].arg[0].value.[2].arg[0].value.[0].arg[1].value.[0].modifier[1].arg[0].value", fallback: 1.0))
                }
            }
            HStack(spacing: __designTimeInteger("#8275.[1].[2].property.[0].[0].arg[0].value.[3].arg[0].value", fallback: 0)){
                Spacer()
                Button(action: {
                    //self.handleDislike(actualGuy:actualGuy)
                }, label:{
                    Image(__designTimeString("#8275.[1].[2].property.[0].[0].arg[0].value.[3].arg[1].value.[1].arg[1].value.[0].arg[0].value", fallback: "Dislike"))
                })
                Spacer()
                Button(action: {
                    //self.handleLike(actualGuy:actualGuy)
                }, label: {
                    Image(__designTimeString("#8275.[1].[2].property.[0].[0].arg[0].value.[3].arg[1].value.[3].arg[1].value.[0].arg[0].value", fallback: "Like"))
                })
                Spacer()
            }
        }
        
    
#sourceLocation()
    }
}

extension ContentView {
    @_dynamicReplacement(for: handleLike(actualGuy:)) private func __preview__handleLike(actualGuy: Guy) {
        #sourceLocation(file: "/Users/lkcsdvd/Documents/GitHub/TinderClone/Tinder/ContentView.swift", line: 23)
        actualGuy.like()
        print(__designTimeString("#8275.[1].[1].[1].arg[0].value", fallback: "like"))
        print(actualGuy.getName())
        //getNewGuy()
    
#sourceLocation()
    }
}

extension ContentView {
    @_dynamicReplacement(for: handleDislike(actualGuy:)) private func __preview__handleDislike(actualGuy: Guy) {
        #sourceLocation(file: "/Users/lkcsdvd/Documents/GitHub/TinderClone/Tinder/ContentView.swift", line: 16)
        actualGuy.dislike()
        print(actualGuy.getName())
        //getNewGuy()
    
#sourceLocation()
    }
}

import struct Baszunk_.ContentView
import struct Baszunk_.ContentView_Previews
