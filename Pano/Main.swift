import SwiftUI

@main
struct Main: App {
    @StateObject var dummy = DummyData()
    @StateObject var constants = UserDefaults()

    
    var body: some Scene {
        WindowGroup {
            EntryView()
                .environmentObject(dummy)
                .environmentObject(constants)
                .accentColor(Color(uiColor: UIColor.label))
                .preferredColorScheme(constants.isThemeDark ? .dark : .light)
        }
    }
}
