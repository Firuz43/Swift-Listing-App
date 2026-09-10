//
//  MainView.swift
//  ListingApp
//
//  Created by Macbook on 07.09.2026.
//

import SwiftUI

struct MainView: View {
    @State private var searchText = ""
    
    // Sample Data
    let laptops = [
        ListingItem(title: "Thunderobot RTX игровой ноутбук", price: "7 000 c.", imageName: "laptopcomputer"),
        ListingItem(title: "Игровой ноутбук HP i7 12GB", price: "4 700 c.", imageName: "laptopcomputer")
    ]
    
    let furniture = [
        ListingItem(title: "Шкаф для одежды", price: "3 200 c.", imageName: "square.split.2x2"),
        ListingItem(title: "Пуфик мягкий", price: "800 c.", imageName: "chair.fill")
    ]
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color.black.ignoresSafeArea()
                
                ScrollView {
                    VStack(spacing: 20) {
                        
                        // 1. Search Bar
                        SearchHeaderView(searchText: $searchText)
                        
                        // 2. Categories Grid
                        CategoriesGridView()
                        
                        // 3. Horizontal Sections
                        SectionRowView(sectionTitle: "Ноутбуки для работы и учёбы", items: laptops)
                        
                        SectionRowView(sectionTitle: "Мебель для дома", items: furniture)
                    }
                    .padding(.vertical)
                }
            }
        }
    }
}

#Preview {
    MainView()
}
