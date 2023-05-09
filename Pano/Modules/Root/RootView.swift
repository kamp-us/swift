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
            )
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
                    title: "Duis aute irure dolor in reprehenderit in voluptate",
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
        VStack(
            alignment: .leading,
            spacing: 8) {
                Text(attributedTitle + "  " + attributedURL) // TODO: Adjust line height between title and URL
                Text(attributedAuthorName + attributedDivider + attributedCommentCount + attributedDivider + attributedCreatedAt)
            }
    }
}
