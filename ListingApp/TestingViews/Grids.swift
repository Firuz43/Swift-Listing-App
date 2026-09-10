//
//  Grids.swift
//  ListingApp
//
//  Created by Macbook on 07.09.2026.
//

import SwiftUI

struct Grids: View {
    
    
    let rows = [GridItem(.fixed(30)), GridItem(.fixed(30))]
    
    
    //    let rows = [
    //        GridItem(.fixed(30), spacing: 1),
    //        GridItem(.fixed(60), spacing: 10),
    //        GridItem(.fixed(90), spacing: 20),
    //        GridItem(.fixed(10), spacing: 50),
    //        GridItem(.fixed(20), spacing: 30),
    //    ]
    
    
    var body: some View {
        
        ScrollView(.horizontal) {
            LazyHGrid(rows: rows) {
                ForEach(0x1f600...0x1f679, id:\.self) {value in
                    Text(String(format: "%x", value))
                    Text(emoji(value))
                        .font(.largeTitle)
                }
            }
        }
        
        //       ScrollView(.horizontal) {
        //            LazyHGrid(rows: rows, spacing: 5) {
        //                ForEach(0...300, id: \.self) {_ in
        //                    Color.red.frame(width: 30)
        //                    Color.green.frame(width: 30)
        //                    Color.blue.frame(width: 30)
        //                    Color.yellow.frame(width: 30)
        //                    Color.purple.frame(width: 30)
        //                }
        //            }
        //        }
        
        
        //        Grid {
        //            GridRow {
        //                Text("Hello World")
        //                Image(systemName: "globe")
        //            }
        //            Divider()
        //                .gridCellUnsizedAxes(.horizontal)
        //
        //            GridRow {
        //                Image(systemName: "hand.wave")
        //                Text("World")
        //            }
        //        }
        
        
        
        //        Grid(alignment: .trailing, horizontalSpacing: 20, verticalSpacing: 40) {
        //            GridRow {
        //                Text("Row 1")
        //                ForEach(0..<2) {_ in Color.red}
        //            }
        //            GridRow {
        //                Text("Row 2")
        //                ForEach(0..<5) {_ in Color.blue}
        //            }
        //            GridRow {
        //                Text("Row 3")
        //                ForEach(0..<4) {_ in Color.green}
        //            }
        //        }
        //        .padding()
        
        
        
        
        //        Grid {
        //            GridRow {
        //                Text("Regular font")
        //                    .gridColumnAlignment(.trailing)
        //                Text("Helvetica 12")
        //                Button("Select") {}
        //            }
        //            GridRow {
        //                Text("Fixed Width font:")
        //                Text("Menlo Regular fit")
        //                Button("Select") {}
        //            }
        //
        //            GridRow {
        //                Color.clear
        //                    .gridCellUnsizedAxes([.vertical, .horizontal])
        ////                Toggle("Use fixed-width font for new documents", isOn: $isOn)
        //                    .gridCellColumns(2)
        //            }
        //        }
        
        
        
        //        Grid {
        //            GridRow {
        //                Color.clear
        //                    .gridCellUnsizedAxes([.horizontal, .vertical])
        //                ForEach(1..<4) { column in
        //                    Text("C\(column)")
        //                }
        //            }
        //            ForEach(1..<4) { row in
        //                GridRow {
        //                    Text("R\(row)")
        //                    ForEach(1..<4) { _ in
        //                        Circle().foregroundStyle(.mint)
        //                    }
        //                }
        //            }
        //        }
        
        
        
        
    }
    
    private func emoji(_ value: Int) -> String {
        guard let scalar = UnicodeScalar(value) else {return "?"}
        return String(Character(scalar))
    }
}

#Preview {
    Grids()
}
