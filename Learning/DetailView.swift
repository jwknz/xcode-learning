//
//  DetailView.swift
//  Learning
//
//  Created by Jeff Kranenburg on 09/10/2024.
//

import SwiftUI

struct DetailView: View {
    var body: some View {
        VStack {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.mint.ignoresSafeArea(edges: .vertical))
    }
}

#Preview {
    DetailView()
}
