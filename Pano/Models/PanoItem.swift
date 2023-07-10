import Foundation

struct PanoItem: Identifiable {
    let id = UUID()
    let title: String
    let urlString: String
    let authorName: String
    let upvoteCount: Int
    let numberOfComments: Int
    let createdAtText: String
}

extension PanoItem {
    static let sampleData: [PanoItem] = {
        return [
            PanoItem(
                title: "Getting started with Scrumdinger",
                urlString: "https://developer.apple.com/tutorials/app-dev-training/getting-started-with-scrumdinger",
                authorName: "theBeast",
                upvoteCount: 8,
                numberOfComments: 88,
                createdAtText: "5h"
            ),
            PanoItem(
                title: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua",
                urlString: "https://github.com/kamp-us/swift",
                authorName: "theBeast",
                upvoteCount: 8,
                numberOfComments: 88,
                createdAtText: "5h"
            ),
            PanoItem(
                title: "Pano Dev Kampus",
                urlString: "https://pano-dev.kamp.us",
                authorName: "usirin",
                upvoteCount: 8,
                numberOfComments: 88,
                createdAtText: "5h"
            )
        ]
    }()
}
