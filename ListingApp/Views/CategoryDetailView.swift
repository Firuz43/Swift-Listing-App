//
//  CategoryDetailView.swift
//  ListingApp
//
//  Created by Macbook on 10.09.2026.
//

import SwiftUI

struct CategoryDetailView: View {
    let category: CategoryItem
    
    var body: some View {
        ZStack {
            Color.black.ignoresSafeArea()
            
            VStack(spacing: 16) {
                Image(systemName: category.iconName)
                    .font(.system(size: 60))
                    .foregroundStyle(.blue)
                
                Text(category.title)
                    .font(.largeTitle)
                    .bold()
                    .foregroundStyle(.white)
            }
        }
        
        .navigationTitle(category.title)
        .navigationBarTitleDisplayMode(.inline)
    }
}


struct ProductDetailView: View {
    let item: ListingItem
    
    var body: some View {
        ZStack {
            Color.black.ignoresSafeArea()
            
            VStack(alignment: .leading, spacing: 16) {
                Image(systemName: item.imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(maxWidth: .infinity, maxHeight: 300)
                    .background(Color.gray.opacity(0.2))
                    .cornerRadius(12)
                
                Text(item.price)
                    .font(.title3)
                    .bold()
                    .foregroundStyle(.white)
                
                Text(item.title)
                    .font(.title3)
                    .foregroundStyle(.gray)
                
                Spacer()
            }
            .padding()
        }
        .navigationTitle("Объявление")
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    //    CategoryDetailView(category: CategoryItem(title: "Note", iconName: "heart.fill"))
    ProductDetailView(item: ListingItem(title: "Heart", price: "5000", imageName: "heart.fill"))
}
