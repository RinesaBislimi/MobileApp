










import SwiftUI

struct ContentView: View {
    @StateObject var itemManager = ItemManager()
    @StateObject var userDatabase = UserDatabase()
    @State private var isShowingLogin = false
    @State private var isShowingSignUp = false

    var body: some View {
        TabView {
            Home()
                .tabItem {
                    Image(systemName: "house").font(.title)
                }
            if isShowingSignUp {
                SignUpView(userDatabase: userDatabase)
                    .tabItem {
                        Image(systemName: "person.fill").font(.title)
                    }
                    .onAppear {
                        isShowingSignUp = false // Reset to false after showing SignUpView
                    }
            } else {
                LoginView() // Show LoginView when not showing SignUpView
                    .tabItem {
                        Image(systemName: "person.fill").font(.title)
                    }
            }
            Heart()
                .tabItem {
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
