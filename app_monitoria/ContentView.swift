import SwiftUI

struct ContentView: View {
    
    var body: some View {
        TabView {
            TelaInicial()
                .tabItem {
                    Label("Home", systemImage: "house")
                }
            RankScreen()
                .tabItem {
                    Label("Rank", systemImage: "trophy")
                }
            Text("Pesquisa")
                .tabItem {
                    Label("Search", systemImage: "magnifyingglass")
                }
            Text("Loja")
                .tabItem {
                    Label("Store", systemImage: "cart")
                }
            ProfileScreen()
                .tabItem {
                    Label("Profile", systemImage: "person.circle.fill")
                }
        }
    }
}

#Preview {
    ContentView()
}
