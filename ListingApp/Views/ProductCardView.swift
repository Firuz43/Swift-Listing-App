//
//  ProductCardView.swift
//  ListingApp
//
//  Created by Macbook on 10.09.2026.
//

import SwiftUI

struct ProductCardView: View {
    let item: ListingItem
    
    var body: some View {
        VStack(alignment: .leading, spacing: 6) {
            Image(systemName: item.imageName)
                .resizable()
                .scaledToFit()
                .frame(width: 160, height: 120)
                .background(Color.gray.opacity(0.3))
                .cornerRadius(12)
                .clipped()
            
            Text(item.price)
                .font(.headline)
                .bold()
                .foregroundStyle(.white)
            
            Text(item.title)
                .font(.caption)
                .foregroundStyle(.gray)
                .lineLimit(2)
        }
        .frame(width: 160)
    }
}

struct SectionRowView: View {
    let sectionTitle: String
    let items: [ListingItem]
    
    var body: some View {
        VStack(alignment: .leading, spacing:  12) {
            HStack {
                Text(sectionTitle)
                    .font(.title3)
                    .bold()
                    .foregroundStyle(.white)
                
                Spacer()
                
                Image(systemName: "arrow.right")
                    .foregroundStyle(.white)
            }
            .padding(.horizontal)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 12) {
                    ForEach(items) {item in
                        ProductCardView(item: item)
                    }
                }
                .padding(.horizontal)
            }
        }
    }
}

#Preview {
    ProductCardView(item: ListingItem(title: "Notebook", price: "5000", imageName: "heart.fill"))
    SectionRowView(sectionTitle: "Notebook", items: [ListingItem(title: "Notebook", price: "5500", imageName: "heart.fill"), ListingItem(title: "Пуфик мягкий", price: "800 c.", imageName: "chair.fill")
])
}
