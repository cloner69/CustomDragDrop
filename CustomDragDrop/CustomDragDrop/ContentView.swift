//
//  ContentView.swift
//  CustomDragDrop
//
//  Created by Adrian Suryo Abiyoga on 18/02/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        GeometryReader {
            let safeArea = $0.safeAreaInsets
            
            Image(.wallpaper)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .blur(radius: 40, opaque: true)
                .overlay {
                    Rectangle()
                        .fill(.black.opacity(0.15))
                }
                .ignoresSafeArea()
            
            Home(safeArea: safeArea)
        }
    }
}

#Preview {
    ContentView()
}
