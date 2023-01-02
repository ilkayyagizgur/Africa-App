//
//  VideoModel.swift
//  Africa
//
//  Created by Ada Yagiz Gur on 30.12.2022.
//

import Foundation

struct Video: Codable, Identifiable {
    let id: String
    let name: String
    let headline: String
    
    // Computed Property
    var thumbnail: String {
        "video-\(id)"
    }
}
