


import SwiftUI

struct ContentView: View {
    @StateObject var itemManager = ItemManager()

    var body: some View {
        TabView {
            Home()
                .tabItem {
                    Image(systemName: "house").font(.title)
                }
            Text("person")
                .tabItem {
                    Image(systemName: "person.fill").font(.title)
                }
            Heart().tabItem {
                    Image(systemName: "heart.fill").font(.title)
                }
        }
        .environmentObject(itemManager) // Inject ItemManager into the view hierarchy
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
