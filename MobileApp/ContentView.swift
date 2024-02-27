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
            Text("person").tabItem{
                Image(systemName:"person.fill").font(.title)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
