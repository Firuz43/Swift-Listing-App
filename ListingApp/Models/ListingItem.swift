//
//  ListingItem.swift
//  ListingApp
//
//  Created by Macbook on 07.09.2026.
//

import Foundation

struct ListingItem: Identifiable {
    let id = UUID()
    let title: String
    let price: String
    let imageName: String
}
