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
    
    let columns = Array(repeating: GridItem(.flexible(), spacing: 10), count: 3)
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    CategoriesGridView()
}
