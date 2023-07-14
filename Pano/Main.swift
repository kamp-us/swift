import SwiftUI

@main
struct Main: App {
    @StateObject var dummy = DummyData()
    var body: some Scene {
        WindowGroup {
            EntryView()
                .environmentObject(dummy)
                .accentColor(Color(uiColor: UIColor.label))

        }
    }
}
