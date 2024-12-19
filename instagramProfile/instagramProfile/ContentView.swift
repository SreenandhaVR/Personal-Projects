//
//  ContentView.swift
//  instagramProfile
//
//  Created by DDUKK on 16/10/24.
//

import SwiftUI

struct ContentView: View {
    @State var selection: String = "4"
    var body: some View {
        
        TabView(selection: $selection) {
            Text("Tab Content 1").tabItem { Image(systemName: "house").padding() }.tag(1)
            Text("Tab Content 2").tabItem { Image(systemName: "magnifyingglass") }.tag(3)
            Text("Tab Content 3").tabItem { Image(systemName: "square.rounded") }.tag(2)
            Text("Tab Content 4").tabItem { Image(systemName: "film") }.tag(3)
            myProfile().tabItem { Image(systemName: "person.circle") }.tag(4)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
