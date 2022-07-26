//
//  ContentView.swift
//  asd
//
//  Created by lkcsdvd on 2022. 07. 10..
//

import SwiftUI

struct ScrollView: View {
    var body: some View {
        VStack{
            Text("Hello, a jó kurva anyád!")
                .padding()
            Button("Hello joska", action: {
                print("wassup")
            })
            
            Button(action: {
                print("yes")
            },label:{
                Text("xd")
            })
            Image("DSC_0830").resizable();
            Text("==").padding()
            Image("chad-appicon").resizable()
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ScrollView()
    }
}
