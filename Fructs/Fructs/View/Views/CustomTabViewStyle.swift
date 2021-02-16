//
//  CustomTabViewStyle.swift
//  Fructs
//
//  Created by Maxim Granchenko on 16.02.2021.
//

import SwiftUI


struct CustomTabViewStyle: View {
    
    @Binding var selection: Int
    
    var body: some View {
        HStack {
            ForEach(0..<5) { index in
                if index == selection {
                    RoundedRectangle(cornerRadius: 2)
                        .frame(width: 20, height: 4)
                        .foregroundColor(Color.yellow)
                } else {
                    RoundedRectangle(cornerRadius: 2)
                        .frame(width: 20, height: 4)
                        .foregroundColor(Color.green)
                        .opacity(0.2)
                }
            }
        }
        .padding(.bottom)
    }
}
