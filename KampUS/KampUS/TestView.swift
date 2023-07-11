//
//  TestView.swift
//  KampUS
//
//  Created by Serdar Onur KARADAĞ on 10.07.2023.
//

import SwiftUI

struct TestView: View {
    @State private var currentView: Tab = .Tab1
    @State private var showModal: Bool = false
    
    var body: some View {
        NavigationView {
            VStack {
                CurrentScreen(currentView: self.$currentView)
                TabBar(currentView: self.$currentView,
                       showModal: self.$showModal)
            }
        }
        .background(Color(.white))
        .navigationViewStyle(StackNavigationViewStyle())
        .sheet(isPresented: self.$showModal) { ScreenModal() }
    }
}

struct TestView_Previews: PreviewProvider {
    static var previews: some View {
        TestView()
    }
}

enum Tab {
    case Tab1
    case Tab2
}

struct CurrentScreen: View {
    @Binding var currentView: Tab
    var body: some View {
        VStack {
            if self.currentView == .Tab1 {
                Screen1()
            } else {
                Screen2()
            }
        }
    }
}

struct TabBar: View {
    @Binding var currentView: Tab
    @Binding var showModal: Bool
    var body: some View {
        HStack {
            TabBarItem(currentView: self.$currentView,
                       imageName: "list.bullet",
                       paddingEdges: .leading, tab: .Tab1)
            Spacer()
            ShowModalTabBarItem(radius: 55) {
                  self.showModal.toggle()
            }
            Spacer()
            TabBarItem(currentView: self.$currentView,
                       imageName: "gear",
                       paddingEdges: .trailing, tab: .Tab2)
        }
        .frame(minHeight: 70)
    }
}

struct TabBarItem: View {
    @Binding var currentView: Tab
    let imageName: String
    let paddingEdges: Edge.Set
    let tab: Tab
    var body: some View {
        VStack(spacing:0) {
            
            Image(systemName: imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .padding(5)
                .frame(width: 40, height: 40, alignment: .center)
                .background(Color(self.currentView == tab ? .blue :
                                  .white).opacity(0.2))
                .foregroundColor(Color(self.currentView == tab ?
                                 .blue : .black))
                .cornerRadius(6)
        }
        .frame(width: 100, height: 50)
        .onTapGesture { self.currentView = self.tab }
        .padding(paddingEdges, 15)
    }
}

public struct ShowModalTabBarItem: View {
    let radius: CGFloat
    let action: () -> Void
    public init(radius: CGFloat, action: @escaping () -> Void) {
        self.radius = radius
        self.action = action
    }
    public var body: some View {
        VStack(spacing:0) {
            Image(systemName: "plus.circle.fill")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: radius, height: radius, alignment:
                       .center)
                .foregroundColor(Color(.systemBlue))
                .background(Color(.white))
                .cornerRadius(radius/2)
                .overlay(RoundedRectangle(cornerRadius:
                      radius/2).stroke(Color(.blue), lineWidth: 2))
        }
        .frame(width: radius, height: radius)
        .onTapGesture(perform: action)
    }
}

struct Screen1: View {
    var body: some View {
        VStack {
            Spacer()
            HStack {
                Spacer()
                Text("Screen 1")
                    .font(.system(size: 20))
                    .bold()
                Spacer()
            }
            HStack {
                NavigationLink(destination: AddPostView()) {
                      Text("Show detail")
                }
            }
            Spacer()
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0,
               maxHeight: .infinity, alignment: .topLeading)
        .background(Color(.yellow).opacity(0.2))
        .navigationBarTitle("Screen 1")
    }
}
//...
struct Screen2: View {
    var body: some View {
        VStack {
            Spacer()
            HStack {
                Spacer()
                Text("Screen 2")
                    .font(.system(size: 20))
                    .bold()
                Spacer()
            }
            Spacer()
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0,
               maxHeight: .infinity, alignment: .topLeading)
        .background(Color(.purple).opacity(0.2))
        .navigationBarTitle("Screen 2")
    }
}
//...
struct ScreenModal: View {
    var body: some View {
        VStack {
            Spacer()
            HStack {
                Spacer()
                Text("Screen 2")
                Spacer()
            }
            Spacer()
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0,
               maxHeight: .infinity, alignment: .topLeading)
        .background(Color(.red).opacity(0.2))
        .edgesIgnoringSafeArea(.all)
    }
}
