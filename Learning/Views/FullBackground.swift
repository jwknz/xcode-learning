//
//  FullBackground.swift
//  01-SwiftUI-PG
//
//  Created by Jeffrey Kranenburg on 16/09/2024.
//

import SwiftUI

struct FullBackground: View {
    var body: some View {
        
        VStack() {
            Text("Hello")
        }
        .frame(width: 200, height: 200)
        .background(Color.red)
        .ignoresSafeArea(edges: .all)
        
    }
}

#Preview {
    FullBackground()
}
