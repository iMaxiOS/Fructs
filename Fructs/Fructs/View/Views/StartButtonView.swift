//
//  StartButtonView.swift
//  Fructs
//
//  Created by Maxim Granchenko on 16.02.2021.
//

import SwiftUI

struct StartButtonView: View {
    var body: some View {
        Button(action: {}, label: {
            HStack(spacing: 8) {
                Text("Start")
                Image(systemName: "arrow.right.circle")
                    .imageScale(.large)
            }
            .padding(.horizontal)
            .padding(.vertical, 10)
        })
        .background(
            Capsule().strokeBorder(Color.white, lineWidth: 1.25)
        )
        .accentColor(.white)
    }
}

struct StartButtonView_Previews: PreviewProvider {
    static var previews: some View {
        StartButtonView()
            .preferredColorScheme(.dark)
            .previewLayout(.sizeThatFits)
    }
}
