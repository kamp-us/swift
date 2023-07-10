import SwiftUI

struct HomeView: View {
    let items: [PanoItem]
    
    var body: some View {
        NavigationView {
            List(items) { item in
                HomePanoItemView(item: item)
                    .padding()
            }
            .navigationTitle("Pano")
        }
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView(items: PanoItem.sampleData)
    }
}
