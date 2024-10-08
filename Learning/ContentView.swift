//
//  ContentView.swift
//  Learning
//
//  Created by Jeff Kranenburg on 08/10/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 20) {
            
            Circle()
                .frame(width: 40, height: 40, alignment: .center)
                .foregroundStyle(Color.red)
            
            Text("Setup One")
                .font(.title)
                .foregroundStyle(.white)
                .fontWeight(.bold)
            
            Text("I am going to learn!")
                .foregroundStyle(.white)
            
        }
        .padding(.all)
        .background(.blue)
        .cornerRadius(20)
    }
}

#Preview {
    ContentView()
}
