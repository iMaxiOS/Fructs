//
//  FruitDetailView.swift
//  Fructs
//
//  Created by Maxim Granchenko on 16.02.2021.
//

import SwiftUI

struct SettingsRowView: View {
    
	var name: String
	var content: String? = nil
	var linkLabel: String? = nil
	var linkDestination: String? = nil
	
    var body: some View {
		VStack {
			Divider()
                .padding(.vertical, 4)
            
			HStack {
				Text(name)
                    .foregroundColor(.gray)
                
				Spacer()
                
				if let content = content {
					Text(content)
				} else if let linkLabel = linkLabel, let linkDestination = linkDestination {
					Link(linkLabel, destination: URL(string: "https://\(linkDestination)")!)
                    
					Image(systemName: "arrow.up.right.square")
                        .foregroundColor(.pink)
				} else {
					EmptyView()
				}
			}
		}
    }
}

struct SettingsRowView_Previews: PreviewProvider {
    static var previews: some View {
		Group {
			SettingsRowView(name: "Developer", content: "Maxim Granchenko")
				.previewLayout(.fixed(width: 375, height: 60))
				.padding()
			SettingsRowView(name: "Website", linkLabel: "SwiftUI Apple", linkDestination: "apple.com")
				.preferredColorScheme(.dark)
				.previewLayout(.fixed(width: 375, height: 60))
				.padding()
		}
    }
}
