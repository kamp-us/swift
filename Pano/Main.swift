import SwiftUI

@main
struct Main: App {
    @StateObject var dummy = DummyData()
    @StateObject var constants = UserDefaults()
    
    @AppStorage("IS_THEME_DARK") var isThemeDark: Bool = false
    
    var body: some Scene {
        WindowGroup {
            EntryView()
                .environmentObject(dummy)
                .environmentObject(constants)
                .accentColor(Color(uiColor: UIColor.label))
                .preferredColorScheme(isThemeDark ? .dark : .light)
        }
    }
}
