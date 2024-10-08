//
//  VStacks.swift
//  01-SwiftUI-PG
//
//  Created by Jeffrey Kranenburg on 16/09/2024.
//

import SwiftUI

struct VStacks: View {
    var body: some View {

        ZStack() {
            
            VStack(spacing: 20) {
                
                RoundedRectangle(cornerRadius: 20)
                    .foregroundStyle(Color.red)
                
                RoundedRectangle(cornerRadius: 20)
                    .foregroundStyle(Color.white)
                
                RoundedRectangle(cornerRadius: 20)
                    .foregroundStyle(Color.blue)
                
            }
            
        }
        .frame(width: 100, height: 300)
        .padding(.all)
        .background(Color.purple)
        .cornerRadius(20)
        
    }
}

#Preview {
    VStacks()
}
