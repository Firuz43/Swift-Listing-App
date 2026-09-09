//
//  MessageRow.swift
//  ListingApp
//
//  Created by Macbook on 08.09.2026.
//

import SwiftUI

struct MessageRow: View {
    var body: some View {
        HStack(alignment: .top) {
            ZStack {
                Circle()
                    .fill(Color.yellow)
                Text("MR")
                    .font(.title2)
                    .foregroundStyle(.white)
            }
            .frame(width: 40)
            Text("There is good japanese curry in the block above.There is good japanese curry in the block aboveThere is good japanese curry in the block above")
        }
    }
}

#Preview {
    MessageRow()
}
