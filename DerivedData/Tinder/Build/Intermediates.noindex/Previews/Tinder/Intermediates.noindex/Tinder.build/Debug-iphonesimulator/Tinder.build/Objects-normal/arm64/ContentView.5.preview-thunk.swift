@_private(sourceFile: "ContentView.swift") import Baszunk_
import SwiftUI
import SwiftUI

extension ContentView_Previews {
    @_dynamicReplacement(for: previews) private static var __preview__previews: some View {
        #sourceLocation(file: "/Users/lkcsdvd/Documents/GitHub/asd/Tinder/ContentView.swift", line: 128)
        __designTimeSelection(ContentView(), "#4277.[3].[0].property.[0].[0]")
    #sourceLocation()
    }
}

extension ContentView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/lkcsdvd/Documents/GitHub/asd/Tinder/ContentView.swift", line: 97)
        __designTimeSelection(VStack{
            __designTimeSelection(Spacer(), "#4277.[2].[12].property.[0].[0].arg[0].value.[0]")
            __designTimeSelection(Image(__designTimeString("#4277.[2].[12].property.[0].[0].arg[0].value.[1].arg[0].value", fallback: "appTitle")), "#4277.[2].[12].property.[0].[0].arg[0].value.[1]")
            __designTimeSelection(ZStack{
                //ForEach(guyContainer.shuffled(), id: \.self){ card in
                    __designTimeSelection(actualGuy.getPicture().resizable().padding().gesture(__designTimeSelection(dragGesture, "#4277.[2].[12].property.[0].[0].arg[0].value.[2].arg[0].value.[0].modifier[3].arg[0].value")), "#4277.[2].[12].property.[0].[0].arg[0].value.[2].arg[0].value.[0]")
                    __designTimeSelection(Text(actualGuy.getName() + __designTimeString("#4277.[2].[12].property.[0].[0].arg[0].value.[2].arg[0].value.[1].arg[0].value.[0]", fallback: ", ") + actualGuy.getAge()).bold().colorInvert().padding(.top, __designTimeInteger("#4277.[2].[12].property.[0].[0].arg[0].value.[2].arg[0].value.[1].modifier[2].arg[1].value", fallback: 785)).position(x: __designTimeInteger("#4277.[2].[12].property.[0].[0].arg[0].value.[2].arg[0].value.[1].modifier[3].arg[0].value", fallback: 90)), "#4277.[2].[12].property.[0].[0].arg[0].value.[2].arg[0].value.[1]")
                }, "#4277.[2].[12].property.[0].[0].arg[0].value.[2]")

            __designTimeSelection(HStack{
                __designTimeSelection(Spacer(), "#4277.[2].[12].property.[0].[0].arg[0].value.[3].arg[0].value.[0]")
                __designTimeSelection(Button(action: {
                    __designTimeSelection(self.handleDislike(), "#4277.[2].[12].property.[0].[0].arg[0].value.[3].arg[0].value.[1].arg[0].value.[0]")
                }, label:{
                    __designTimeSelection(Image(__designTimeString("#4277.[2].[12].property.[0].[0].arg[0].value.[3].arg[0].value.[1].arg[1].value.[0].arg[0].value", fallback: "Dislike")), "#4277.[2].[12].property.[0].[0].arg[0].value.[3].arg[0].value.[1].arg[1].value.[0]")
                }), "#4277.[2].[12].property.[0].[0].arg[0].value.[3].arg[0].value.[1]")
                __designTimeSelection(Spacer(), "#4277.[2].[12].property.[0].[0].arg[0].value.[3].arg[0].value.[2]")
                __designTimeSelection(Button(action: {
                    __designTimeSelection(self.handleLike(), "#4277.[2].[12].property.[0].[0].arg[0].value.[3].arg[0].value.[3].arg[0].value.[0]")
                }, label: {
                    __designTimeSelection(Image(__designTimeString("#4277.[2].[12].property.[0].[0].arg[0].value.[3].arg[0].value.[3].arg[1].value.[0].arg[0].value", fallback: "Like")), "#4277.[2].[12].property.[0].[0].arg[0].value.[3].arg[0].value.[3].arg[1].value.[0]")
                }), "#4277.[2].[12].property.[0].[0].arg[0].value.[3].arg[0].value.[3]")
                __designTimeSelection(Spacer(), "#4277.[2].[12].property.[0].[0].arg[0].value.[3].arg[0].value.[4]")
            }, "#4277.[2].[12].property.[0].[0].arg[0].value.[3]")
        }.background(__designTimeSelection(currentColor.opacity(__designTimeInteger("#4277.[2].[12].property.[0].[0].modifier[0].arg[0].value.modifier[0].arg[0].value.[0]", fallback: 1)-currentOpacity), "#4277.[2].[12].property.[0].[0].modifier[0].arg[0].value")), "#4277.[2].[12].property.[0].[0]")
        
    #sourceLocation()
    }
}

extension ContentView {
    @_dynamicReplacement(for: handleLike()) private func __preview__handleLike() {
        #sourceLocation(file: "/Users/lkcsdvd/Documents/GitHub/asd/Tinder/ContentView.swift", line: 90)
        __designTimeSelection(actualGuy.like(), "#4277.[2].[11].[0]")
        __designTimeSelection(print(__designTimeString("#4277.[2].[11].[1].arg[0].value", fallback: "like")), "#4277.[2].[11].[1]")
        __designTimeSelection(print(__designTimeSelection(actualGuy.getName(), "#4277.[2].[11].[2].arg[0].value")), "#4277.[2].[11].[2]")
        __designTimeSelection(getNewGuy(), "#4277.[2].[11].[3]")
    #sourceLocation()
    }
}

extension ContentView {
    @_dynamicReplacement(for: handleDislike()) private func __preview__handleDislike() {
        #sourceLocation(file: "/Users/lkcsdvd/Documents/GitHub/asd/Tinder/ContentView.swift", line: 83)
        __designTimeSelection(actualGuy.dislike(), "#4277.[2].[10].[0]")
        __designTimeSelection(print(__designTimeSelection(actualGuy.getName(), "#4277.[2].[10].[1].arg[0].value")), "#4277.[2].[10].[1]")
        __designTimeSelection(getNewGuy(), "#4277.[2].[10].[2]")
    #sourceLocation()
    }
}

extension ContentView {
    @_dynamicReplacement(for: getNewGuy()) private func __preview__getNewGuy() {
        #sourceLocation(file: "/Users/lkcsdvd/Documents/GitHub/asd/Tinder/ContentView.swift", line: 73)
        let prevGuy = actualGuy
        while(prevGuy.getName() == actualGuy.getName())
        {
            actualGuy = guyContainer.randomElement()!
        }
        
    #sourceLocation()
    }
}

import struct Baszunk_.ContentView
import struct Baszunk_.ContentView_Previews