//
//  ContentView.swift
//  MobileAppUITests
//
//  Created by Viola on 17.2.24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        TabView{
            Text("Home").tabItem{
                Image(SystemName:"house").font(.title)
            }
        }

    }
}
