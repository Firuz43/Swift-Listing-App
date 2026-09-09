//
//  ProfilePicture.swift
//  ListingApp
//
//  Created by Macbook on 08.09.2026.
//

import SwiftUI

struct ProfilePicture: View {
    var body: some View {
//        ZStack(alignment: .bottomLeading) {
//            Rectangle()
//                .fill(Color.red)
//                .frame(width: 100, height: 100)
//            Rectangle()
//                .fill(Color.blue)
//                .frame(width: 50, height: 100)
//        }
        
        ZStack(alignment: .bottom) {
            Image("profile")
                .resizable()
                .aspectRatio(contentMode: .fit)
            HStack {
                VStack(alignment: .leading) {
                    Text("Firuz Chamarov")
                        .font(.headline)
                    Text("Executive Chief")
                        .font(.subheadline)
                }
                Spacer()
            }
//            .padding()
//            .foregroundColor(.primary)
//            background(Color.primary
//                .colorInvert()
//                .opacity(0.75))
        }
    }
}

#Preview {
    ProfilePicture()
}
