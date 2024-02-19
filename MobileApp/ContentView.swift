//
//  ContentView.swift
//  MobileApp
//
//  Created by Rinesa on 15.2.24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
            Home().tabItem{
                Image(systemName:"house").font(.title)
            }
            Text("activity").tabItem{
                Image(systemName:"person.fill.checkmark").font(.title)
            }
            Text("search").tabItem{
                Image(systemName:"magnifyingglass.circle").font(.title)
            }
            Text("person").tabItem{
                Image(systemName:"gear").font(.title)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
