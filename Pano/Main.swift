import SwiftUI

@main
struct Main: App {
    @StateObject var dummy = DummyData()
    
    var body: some Scene {
        WindowGroup {
            TabView {
                
                HomeView()
                    .environmentObject(dummy)
                    .tabItem {
                        Label("Home", systemImage: "house")
                            .navigationTitle("Home")
                    }
                
                AddPostView()
                    .tabItem {
                        Label("Add Post", systemImage: "plus.app")
                            .navigationTitle("Home")
                    }
                
                ProfileView()
                    .environmentObject(dummy)
                    .tabItem {
                        Label("Profile", systemImage: "person")
                            .navigationTitle("Profile")
                    }
                
            }
            .environmentObject(dummy)
            .accentColor(Color(uiColor: UIColor.label))

        }
    }
}
