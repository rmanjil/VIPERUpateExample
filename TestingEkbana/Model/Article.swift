//
//  Article.swift
//  TestingEkbana
//
//  Created by manjil on 23/07/2021.
//

import Foundation
struct Article: Codable {
    var source: Source
    var author: String
    var title: String
    var description: String
    var url: String
    var urlToImage: String
    var publishedAt: String
    var content: String
    
    
    init(from decoder: Decoder) throws {
        let  container = try decoder.container(keyedBy: CodingKeys.self)
        source =  try container.decodeIfPresent(Source.self, forKey: .source) ?? Source()
        author =  try container.decodeIfPresent(String.self, forKey: .author) ?? ""
        title =  try container.decodeIfPresent(String.self, forKey: .title) ?? ""
        description =  try container.decodeIfPresent(String.self, forKey: .description) ?? ""
        url =  try container.decodeIfPresent(String.self, forKey: .url) ?? ""
        urlToImage =  try container.decodeIfPresent(String.self, forKey: .urlToImage) ?? ""
        publishedAt =  try container.decodeIfPresent(String.self, forKey: .publishedAt) ?? ""
        content =  try container.decodeIfPresent(String.self, forKey: .content) ?? ""
    }
}

struct Source: Codable {
    var identifer: String
    var name: String
    
    enum CodeKeys: String, CodingKey {
        case identifer = "id"
        case name
    }
    
    init() {
        identifer = ""
        name = ""
    }
    
    init(from decoder: Decoder) throws {
        let  container = try decoder.container(keyedBy: CodeKeys.self)
        identifer =  try container.decodeIfPresent(String.self, forKey: .identifer) ?? ""
        name =  try container.decodeIfPresent(String.self, forKey: .name) ?? ""
    }
}
