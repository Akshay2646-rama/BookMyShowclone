//
//  struct_view.swift
//  bms
//
//  Created by Nxtwave on 09/10/25.
//

import SwiftUI
import Foundation

// MARK: - Welcome
struct Welcome: Codable {
    let movies: [Movie]
}

// MARK: - Movie
struct Movie: Codable,Hashable,Identifiable {
    let id, title, genre: String
    let rating: Double
    let votes: String
    let posterImageName: String
    let duration: String
    let languages: [String]
    let releaseDate, description: String
    let formats, tags, showTimes: [String]
    let seats: [[String]]
    let theaterNames: [String]
}
