//
//  PostData.swift
//  HackerNewsApp
//
//  Created by Hoang Vu on 2020-10-13.
//

import Foundation

struct Results: Decodable {
    let hits: [Post]
}

struct Post: Decodable, Identifiable {
    //computing object to return objectID
    var id: String {
        return objectID
    }
    let points: Int
    let title: String
    let url: String?
    let objectID: String
}
