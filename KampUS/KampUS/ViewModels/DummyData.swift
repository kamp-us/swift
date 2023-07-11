//
//  DummyData.swift
//  KampUS
//
//  Created by Serdar Onur KARADAĞ on 8.07.2023.
//

import Foundation

class DummyData: ObservableObject {
    @Published var items = [
        PanoHomeItem(
            title: "Test title but very and very long and lets make this a little bit longer",
            url: "https://dev.to/gdbroman/how-to-trigger-fewer-vercel-deploys-for-your-monorepo-4ok1",
            authorName: "Author 1",
            numberOfComments: 10,
            createdAtText: "July 1, 2023",
            numberOfLikes: 20
        ),
        PanoHomeItem(
            title: "Title 2",
            url: "https://www.youtube.com/watch?v=kmD25Coj5Mw",
            authorName: "Author 2",
            numberOfComments: 5,
            createdAtText: "July 2, 2023",
            numberOfLikes: 15
        ),
        PanoHomeItem(
            title: "Title 3",
            url: "https://aws.github.io/jsii/",
            authorName: "Author 3",
            numberOfComments: 8,
            createdAtText: "July 3, 2023",
            numberOfLikes: 12
        ),
        PanoHomeItem(
            title: "Title 4",
            url: "https://www.frontendmentor.io/challenges/dictionary-web-app-h5wwnyuKFL",
            authorName: "Author 4",
            numberOfComments: 15,
            createdAtText: "July 4, 2023",
            numberOfLikes: 25
        ),
        PanoHomeItem(
            title: "Title 5",
            url: "https://dictionaryapi.dev/",
            authorName: "Author 5",
            numberOfComments: 3,
            createdAtText: "July 5, 2023",
            numberOfLikes: 9
        ),
        PanoHomeItem(
            title: "Title 6",
            url: "https://www.careers.manchester.ac.uk/applicationsinterviews/cv/activelanguage/",
            authorName: "Author 6",
            numberOfComments: 7,
            createdAtText: "July 6, 2023",
            numberOfLikes: 18
        ),
        PanoHomeItem(
            title: "Title 7",
            url: "https://github.com/melihkorkmaz/il-ilce-mahalle-geolocation-rest-api",
            authorName: "Author 7",
            numberOfComments: 2,
            createdAtText: "July 7, 2023",
            numberOfLikes: 6
        ),
        PanoHomeItem(
            title: "Title 8",
            url: "https://gist.github.com/araufdogan/285d7424a4e8cf138d53ea7f7adf9023",
            authorName: "Author 8",
            numberOfComments: 11,
            createdAtText: "July 8, 2023",
            numberOfLikes: 21
        ),
        PanoHomeItem(
            title: "Title 9",
            url: "https://www.youtube.com/playlist?list=PLXoynULbYuEBSoANKVl4nKzBBae7DM3JK",
            authorName: "Author 9",
            numberOfComments: 6,
            createdAtText: "July 9, 2023",
            numberOfLikes: 14
        ),
        PanoHomeItem(
            title: "Title 10",
            url: "https://planetscale.com/blog/backward-compatible-databases-changes",
            authorName: "Author 10",
            numberOfComments: 9,
            createdAtText: "July 10, 2023",
            numberOfLikes: 17
        )
    ]
    
    @Published var comments = [
        Comment(authotID: UUID(), comment: "Test Comment and very and very long. Lorem ipsum dolar sit ames and something similar with that!", commentAuthor: "Test author", commentLike: 3, subCommentCount: 2, createdAt: "14 March 2021"),
        Comment(authotID: UUID(), comment: "Test Comment and very and very long. Lorem ipsum dolar sit ames and something similar with that!", commentAuthor: "Test author", commentLike: 3, subCommentCount: 2, createdAt: "14 March 2021"),
        Comment(authotID: UUID(), comment: "Test Comment and very and very long. Lorem ipsum dolar sit ames and something similar with that!", commentAuthor: "Test author", commentLike: 3, subCommentCount: 2, createdAt: "14 March 2021"),
        Comment(authotID: UUID(), comment: "Test Comment and very and very long. Lorem ipsum dolar sit ames and something similar with that!", commentAuthor: "Test author", commentLike: 3, subCommentCount: 2, createdAt: "14 March 2021"),
        Comment(authotID: UUID(), comment: "Test Comment and very and very long. Lorem ipsum dolar sit ames and something similar with that!", commentAuthor: "Test author", commentLike: 3, subCommentCount: 2, createdAt: "14 March 2021")]

}
