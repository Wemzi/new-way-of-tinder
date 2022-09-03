@_private(sourceFile: "ContentView.swift") import Baszunk_
import SwiftUI
import SwiftUI

extension ContentView_Previews {
    @_dynamicReplacement(for: previews) private static var __preview__previews: some View {
        #sourceLocation(file: "/Users/lkcsdvd/Documents/GitHub/asd/Tinder/ContentView.swift", line: 128)
        ContentView()
    #sourceLocation()
    }
}

extension ContentView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/lkcsdvd/Documents/GitHub/asd/Tinder/ContentView.swift", line: 97)
        VStack{
            Spacer()
            Image(__designTimeString("#4277.[2].[12].property.[0].[0].arg[0].value.[1].arg[0].value", fallback: "appTitle"))
            ZStack{
                //ForEach(guyContainer.shuffled(), id: \.self){ card in
                    actualGuy.getPicture().resizable().padding().gesture(dragGesture)
                    Text(actualGuy.getName() + __designTimeString("#4277.[2].[12].property.[0].[0].arg[0].value.[2].arg[0].value.[1].arg[0].value.[0]", fallback: ", ") + actualGuy.getAge()).bold().colorInvert().padding(.top, __designTimeInteger("#4277.[2].[12].property.[0].[0].arg[0].value.[2].arg[0].value.[1].modifier[2].arg[1].value", fallback: 785)).position(x: __designTimeInteger("#4277.[2].[12].property.[0].[0].arg[0].value.[2].arg[0].value.[1].modifier[3].arg[0].value", fallback: 90))
                }

            HStack{
                Spacer()
                Button(action: {
                    self.handleDislike()
                }, label:{
                    Image(__designTimeString("#4277.[2].[12].property.[0].[0].arg[0].value.[3].arg[0].value.[1].arg[1].value.[0].arg[0].value", fallback: "Dislike"))
                })
                Spacer()
                Button(action: {
                    self.handleLike()
                }, label: {
                    Image(__designTimeString("#4277.[2].[12].property.[0].[0].arg[0].value.[3].arg[0].value.[3].arg[1].value.[0].arg[0].value", fallback: "Like"))
                })
                Spacer()
            }
        }.background(currentColor.opacity(__designTimeInteger("#4277.[2].[12].property.[0].[0].modifier[0].arg[0].value.modifier[0].arg[0].value.[0]", fallback: 1)-currentOpacity))
        
    #sourceLocation()
    }
}

extension ContentView {
    @_dynamicReplacement(for: handleLike()) private func __preview__handleLike() {
        #sourceLocation(file: "/Users/lkcsdvd/Documents/GitHub/asd/Tinder/ContentView.swift", line: 90)
        actualGuy.like()
        print(__designTimeString("#4277.[2].[11].[1].arg[0].value", fallback: "like"))
        print(actualGuy.getName())
        getNewGuy()
    #sourceLocation()
    }
}

extension ContentView {
    @_dynamicReplacement(for: handleDislike()) private func __preview__handleDislike() {
        #sourceLocation(file: "/Users/lkcsdvd/Documents/GitHub/asd/Tinder/ContentView.swift", line: 83)
        actualGuy.dislike()
        print(actualGuy.getName())
        getNewGuy()
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