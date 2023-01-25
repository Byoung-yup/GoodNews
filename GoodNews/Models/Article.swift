//
//  Article.swift
//  GoodNews
//
//  Created by 김병엽 on 2023/01/25.
//

import Foundation

struct ArticlesList: Decodable {
    let articles: [Article]
}

extension ArticlesList {
    
    static var all: Resource<ArticlesList> = {
        let url = URL(string: "https://newsapi.org/v2/top-headlines?country=us&apiKey=4ab010d03297419eb3cd5e2210cf0916")!
        return Resource(url: url)
    }()
    
}

struct Article: Decodable {
    let title: String
    let description: String?
}
