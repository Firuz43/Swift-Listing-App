//
//  ZStackView.swift
//  ListingApp
//
//  Created by Macbook on 08.09.2026.
//

import SwiftUI

struct AditionalView: View {
    var body: some View {
        VStack {
            Text("Hello There")
        }
    }
}

struct ZStackView: View {
    var body: some View {
//        ZStack {
//            Color.blue.ignoresSafeArea()
//            Rectangle()
//                .stroke(Color.primary)
//            Image(systemName: "heart.fill")
//                //.offset(x: 40.0, y: -40.0)
//                .position(x: 144, y: 80)
//        }
//        .frame(width: 160, height: 160)
        
        ScrollView(.horizontal) {
            LazyHStack(alignment: .top, spacing: 10) {
                
                ForEach(1...100, id:\.self) {
                    Text("Column \($0)")
                }
            }
            .frame(height: 100)
            .padding()
            .padding(.top)
        }
        ScrollView {
            LazyVStack(alignment: .center) {
                Color.yellow
                ForEach(1...100, id: \.self) {
                    Text("Column \($0)")
                }
            }
        }
    }
}

#Preview {
    ZStackView()
}
