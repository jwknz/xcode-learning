//
//  ContentView.swift
//  Learning
//
//  Created by Jeff Kranenburg on 08/10/2024.
//

import SwiftUI

struct ContentView: View {

    let colors = [Color.blue, Color.white, Color.red, Color.yellow]
    
    var body: some View {
        
        ZStack() {
            
            HStack(spacing: 20) {
                
                ForEach(colors, id: \.self) { color in
                    
                    RoundedRectangle(cornerRadius: 20)
                        .foregroundStyle(color)
                    
                }
                
            }
            
        }
        .frame(width: 300, height: 100)
        .padding(.all)
        .background(Color.purple)
        .cornerRadius(20)
        
    }
    
}

#Preview {
    ContentView()
}
