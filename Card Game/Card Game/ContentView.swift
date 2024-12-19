//
//  ContentView.swift
//  Card Game
//
//  Created by DDUKK on 01/10/24.
//

import SwiftUI


struct ContentView: View {
    
    @State var playerCount: Int = 0
    @State var cpuCount: Int = 0
    @State var leftImg: String = "back"
    @State var rightImg: String = "back"
    
    var body: some View {
        ZStack{
            Image("background-plain").opacity(3.0).background(Color.black)
            VStack{
                Image("logo")
                HStack{
                    Image(leftImg)
                    Image(rightImg)
                }
                Button (
                    action: {
                        var l = Int.random(in: 2...14)
                        var r = Int.random(in: 2...14)
                        leftImg = "card\(l)"
                        rightImg = "card\(r)"
                        if(l>r){
                            playerCount = playerCount+1
                        } else {
                            cpuCount = cpuCount+1
                        }
                    },
                    label: {
                        Image("button")
                    }
                )
                HStack{
                    Spacer()
                    Text("Player").foregroundColor(.white)
                    Spacer()
                    Text("CPU").foregroundColor(.white)
                    Spacer()
                }
                HStack{
                    Spacer()
                    Text(String(playerCount)).foregroundColor(.white).font(.system(size: 40))
                    Spacer()
                    Text(String(cpuCount)).foregroundColor(.white).font(.system(size: 40))
                    Spacer()
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
