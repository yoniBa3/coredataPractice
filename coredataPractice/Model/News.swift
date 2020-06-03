//
//  News.swift
//  coredataPractice
//
//  Created by Yoni on 04/06/2020.
//  Copyright © 2020 Yoni. All rights reserved.
//

import Foundation

// MARK: - News
struct News: Codable {
    let status: String
    let totalResults: Int
   let articles: [Article]
}


struct Article: Codable {
    let author: String?
    let title: String?
    let description: String?
    let content: String?
    let urlToImage: String?
}
