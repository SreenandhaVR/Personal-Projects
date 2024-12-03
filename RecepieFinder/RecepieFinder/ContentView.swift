//
//  ContentView.swift
//  RecepieFinder
//
//  Created by DDUKK on 30/10/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
            SearchPage().tabItem {
                VStack{
                    Image(systemName: "magnifyingglass")
                    Text("Search")
                }
            }
            FavouritesPage().tabItem {
                VStack{
                    Image(systemName: "star")
                    Text("Favourites")
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
