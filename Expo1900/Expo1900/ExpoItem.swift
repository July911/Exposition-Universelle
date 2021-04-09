//
//  ExpoItem.swift
//  Expo1900
//
//  Created by TORI on 2021/04/08.
//

import Foundation

struct ExpoItem: Decodable {
    enum CodingKeys: String, CodingKey {
        case name
        case imageName = "image_name"
        case shortDescription = "short_desc"
        case description = "desc"
    }
    
    let name: String
    let imageName: String
    let shortDescription: String
    let description: String
}
