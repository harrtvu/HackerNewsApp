//
//  ContentView.swift
//  HackerNewsApp
//
//  Created by Hoang Vu on 2020-10-13.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var networkManager = NetworkManager()
    
    var body: some View {
        NavigationView {
            //loop through post array to display items inside
            //using property of NetworkManager class
            List(networkManager.posts){ post in
                //create link between 2 UIViews
                NavigationLink(
                    destination: DetailView(url: post.url)){
                    HStack {
                        Text(post.title)
                        Text(String(post.points))
                    }
                }
                
            }
            .navigationBarTitle("H4X0R NEWS")
        }
        .onAppear() {
            self.networkManager.fetchData()
        }
        
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


//
//let posts = [
//    Post(id: "1", title: "Hello"),
//    Post(id: "2", title: "Bonjour"),
//    Post(id: "3", title: "Hola")
//
//]
