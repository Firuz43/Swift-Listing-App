//
//  ContentView.swift
//  ListingApp
//
//  Created by Macbook on 07.09.2026.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            Tab("Home", systemImage: "house") {
                Text("Главная")
            }
            Tab("Избранное", systemImage: "heart.fill") {
                Text("Избранное")
            }
            Tab("Добавить", systemImage: "plus.circle.fill") {
            }
            Tab("Сообщения", systemImage: "message.fill") {
                
            }
            Tab("Профиль", systemImage: "person.fill") {
                
            }
        }
    }
}

#Preview {
    ContentView()
}
