//
//  vstack.swift
//  01-SwiftUI-PG
//
//  Created by Jeffrey Kranenburg on 16/09/2024.
//

import SwiftUI

struct HStacks: View {
    var body: some View {
        
        ZStack() {
            
            HStack(spacing: 20) {
                
                RoundedRectangle(cornerRadius: 20)
                    .foregroundStyle(Color.blue)
                
                RoundedRectangle(cornerRadius: 20)
                    .foregroundStyle(Color.white)
                
                RoundedRectangle(cornerRadius: 20)
                    .foregroundStyle(Color.red)
                
            }
            
        }
        .frame(width: 300, height: 100)
        .padding(.all)
        .background(Color.purple)
        .cornerRadius(20)
        
    }
}

#Preview {
    HStacks()
}
