//
//  AddPostView.swift
//  KampUS
//
//  Created by Serdar Onur KARADAĞ on 9.07.2023.
//

import SwiftUI

struct AddPostView: View {
    //UserDefaults has userId and username. Also has userPraferences.
    @EnvironmentObject var userDefaults: UserDefaults
    
    //Post Informations
    @State private var title: String = ""
    @State private var url: String = ""
    @State private var content: String = ""
    @State private var site: String = ""
    @State private var slug: String = ""
    
    
    var body: some View {
        //This part opens in sheet. For navigationTitle we need navigationStack.
        NavigationStack {
            Form {
                Section {
                    TextField("Title", text: $title)
                    TextField("Content", text: $content, axis: .vertical)
                        .lineLimit(6, reservesSpace: true)
                } header: {
                    Text("POST DETAILS")
                }
                
                Section {
                    TextField("URL", text: $url)
                    TextField("Site", text: $site)
                    TextField("Slug", text: $slug)
                } header: {
                    Text("URL DETAILS")
                }
                
                HStack {
                    Spacer()
                    Button {
                        //In Form button action is not working as expected. For the solution i use onTapGasture.
                    } label: {
                        Text("Add Post")
                    }
                    //Use button action here.
                    .onTapGesture {
                        addPost()
                    }
                    Spacer()
                }

                
            }
            .navigationTitle("Add Post")
        }
    }
    
    //Dummy addPost func
    private func addPost() {
        //Fetch currentUser information from database before add post.
        let currentUser: User = User(id: "1", name: "FelfecirBoy", emailVerified: Date(), accounts: [], sessions: [], posts: [], comments: [], commentUpvotes: [], upvotes: [], createdAt: Date(), updatedAt: Date(), deletedAt: Date(), notifications: [], notifies: [])
        
        //Call addPost func from viewModel and use currentUser for user information.
        //This is dummyFunc too.
        func calledAddPost() {
            print(currentUser.name ?? "Unkown")
            print("Added Post")
        }
    }
    
}

