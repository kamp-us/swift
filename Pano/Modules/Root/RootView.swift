import SwiftUI

struct RootView: View {
    var body: some View {
        List {
            PanoHomeRowView(
                item: PanoHomeItem(
                    title: "Lorem ipsum dolor sit amet",
                    url: "www.google.com",
                    authorName: "theBeast",
                    numberOfComments: 8,
                    createdAtText: "1 dk once"
                )
            ).swipeActions {
                Button {
                    print("Tapped")
                } label: {
                    Image(systemName: "square.and.arrow.up")
                        .imageScale(.small)
                        .foregroundColor(.white)
                }
                .tint(.blue)
                Button {
                    print("Tapped")
                } label: {
                    Image(systemName: "message")
                        .imageScale(.small)
                        .foregroundColor(.white)
                }
                .tint(.green)
            }
            PanoHomeRowView(
                item: PanoHomeItem(
                    title: "Ut enim ad minim veniam",
                    url: "datasetsearch.research.google.com",
                    authorName: "theBeast",
                    numberOfComments: 7,
                    createdAtText: "3 hafta once"
                )
            )
            PanoHomeRowView(
                item: PanoHomeItem(
                    title: "Duis aute irure dolor in reprehenderit in voluptate aute irure dolor in reprehenderit in voluptate",
                    url: "www.google.com",
                    authorName: "theBeast",
                    numberOfComments: 6,
                    createdAtText: "1 ay once"
                )
            )
            PanoHomeRowView(
                item: PanoHomeItem(
                    title: "Excepteur occaecat",
                    url: "www.google.com",
                    authorName: "theBeast",
                    numberOfComments: 5,
                    createdAtText: "1 yil once"
                )
            )
        }
    }
}

struct RootView_Previews: PreviewProvider {
    static var previews: some View {
        RootView()
            .preferredColorScheme(.dark)
    }
}

struct PanoHomeItem {
    let title: String
    let url: String
    let authorName: String
    let numberOfComments: Int
    let createdAtText: String
}

struct PanoHomeRowView: View {
    let item: PanoHomeItem
    
    var attributedTitle: AttributedString {
        var result = AttributedString(item.title)
        result.font = .title3
        result.foregroundColor = .label
        result.underlineStyle = Text.LineStyle(pattern: .solid, color: Color(uiColor: .label))
        return result
    }
    
    var attributedURL: AttributedString {
        var result = AttributedString(item.url)
        result.font = .caption
        result.foregroundColor = .secondaryLabel
        result.underlineStyle = Text.LineStyle(pattern: .solid, color: Color(uiColor: .secondaryLabel))
        return result
    }
    
    var attributedAuthorName: AttributedString {
        var result = AttributedString("@\(item.authorName)")
        result.font = .caption2
        result.foregroundColor = .tertiaryLabel
        return result
    }
    
    var attributedCommentCount: AttributedString {
        var result = AttributedString("\(item.numberOfComments) yorum")
        result.font = .caption
        result.foregroundColor = .tertiaryLabel
        result.underlineStyle = Text.LineStyle(pattern: .solid, color: Color(uiColor: .tertiaryLabel))
        return result
    }
    
    var attributedCreatedAt: AttributedString {
        var result = AttributedString(item.createdAtText)
        result.font = .caption2
        result.foregroundColor = .tertiaryLabel
        return result
    }
    
    var attributedDivider: AttributedString {
        var result = AttributedString(" | ")
        result.font = .caption
        result.foregroundColor = .tertiaryLabel
        return result
    }
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            HStack(alignment: .top, spacing: 8) {
                Button {
                    print("Tapped")
                } label: {
                    VStack(alignment: .center, spacing: 8) {
                        Image(systemName: "arrowtriangle.up.fill")
                            .padding(EdgeInsets(top: 4, leading: 16, bottom: 0, trailing: 16))
                            .imageScale(.small)
                        Text("1K") // TODO: Limit text width
                            .lineLimit(1)
                            .font(Font.headline)
                    }.frame(width: 60)
                }
                .foregroundColor(.secondary)
                VStack(
                    alignment: .leading,
                    spacing: 8) {
                        Text(attributedTitle)
                            .lineLimit(2)
                        Text(attributedURL)
                    }
            }.padding(EdgeInsets(top: 4, leading: 0, bottom: 4, trailing: 0))
            HStack() {
                Spacer()
                Text(attributedAuthorName + attributedDivider + attributedCreatedAt)
            }
        }
    }
}
