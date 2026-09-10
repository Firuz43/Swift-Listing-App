//
//  CategoriesGridView.swift
//  ListingApp
//
//  Created by Macbook on 07.09.2026.
//

import SwiftUI

struct CategoriesGridView: View {
    let categories: [CategoryItem] = [
        CategoryItem(title: "Новостройки", iconName: "building.2.fill"),
        CategoryItem(title: "Недвижимость", iconName: "house.fill"),
        CategoryItem(title: "Транспорт", iconName: "car.fill"),
        CategoryItem(title: "Вакансии", iconName: "briefcase.fill"),
        CategoryItem(title: "Телефоны и связь", iconName: "iphone"),
        CategoryItem(title: "Все рубрики", iconName: "square.grid.3x3.fill")
    ]
    
//    let columns = Array(repeating: GridItem(.flexible(), spacing: 10), count: 3)
    let columns = [
        GridItem(.flexible(), spacing: 10),
        GridItem(.flexible(), spacing: 10),
        GridItem(.flexible(), spacing: 10)
    ]
    
    var body: some View {
        LazyVGrid(columns: columns, spacing: 10) {
            ForEach(categories) {category in
                VStack(spacing: 8) {
                    Image(systemName: category.iconName)
                        .font(.title2)
                        .foregroundStyle(.blue)
                    Text(category.title)
                        .font(.caption)
                        .multilineTextAlignment(.center)
                        .foregroundStyle(.white)
                }
                .frame(maxWidth: .infinity, minHeight: 70)
                .padding(8)
                .background(Color(white: 0.15))
                .cornerRadius(12)
            }
        }
        .padding(.horizontal)
    }
}

#Preview {
    CategoriesGridView()
}
