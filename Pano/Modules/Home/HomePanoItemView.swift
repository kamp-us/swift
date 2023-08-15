import SwiftUI
import LinkPreview

struct HomePanoItemView: View {
    let item: PanoItem
    
    @State var togglePreview = false
    
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            Text(item.title)
            LinkPreview(url: URL(string: item.urlString))
            HStack {
                VStack {
                    Spacer()
                    HStack(alignment: .lastTextBaseline, spacing: 8) {
                        HStack(spacing: 2) {
                            Image(systemName: "arrow.up")
                            Text("\(item.upvoteCount)")
                        }
                        HStack(spacing: 2) {
                            Image(systemName: "message")
                            Text("\(item.numberOfComments)")
                        }
                        HStack(spacing: 2) {
                            Image(systemName: "clock")
                            Text(item.createdAtText)
                        }
                    }
                }
                Spacer()
                HStack(alignment: .lastTextBaseline, spacing: 8) {
                    Button {
                        print("More Tapped")
                    } label: {
                        Image(systemName: "ellipsis")
                            .imageScale(.large)
                            .tint(.primary)
                    }.buttonStyle(.borderless)
                    Button {
                        print("UpVote Tapped")
                    } label: {
                        Image(systemName: "arrow.up")
                            .imageScale(.large)
                            .tint(.primary)
                    }.buttonStyle(.borderless)
                    Button {
                        print("DownVote Tapped")
                    } label: {
                        Image(systemName: "arrow.down")
                            .imageScale(.large)
                            .tint(.primary)
                    }.buttonStyle(.borderless)
                }
            }
            .frame(height: 44)
        }
    }
}

struct HomePanoItemView_Previews: PreviewProvider {
    static var previews: some View {
        HomePanoItemView(item: PanoItem.sampleData[0])
            .previewLayout(.fixed(width: 400, height: 200))
    }
}
