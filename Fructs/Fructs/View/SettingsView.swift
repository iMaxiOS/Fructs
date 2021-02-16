//
//  FruitDetailView.swift
//  Fructs
//
//  Created by Maxim Granchenko on 16.02.2021.
//

import SwiftUI

struct SettingsView: View {
    
	@Environment(\.presentationMode) var presentationMode
	@AppStorage("isOnboarding") var isOnboarding: Bool = false
	
    
    var body: some View {
		NavigationView {
			ScrollView(.vertical, showsIndicators: false) {
				VStack(spacing: 20) {
					GroupBox(label: SettingsLabelView(labelText: "Fructus", labelImage: "info.circle")) {
						Divider()
                            .padding(.vertical, 4)
						
						HStack(alignment: .center, spacing: 10) {
							Image("logo")
								.resizable()
								.scaledToFit()
								.frame(width: 80, height: 80)
								.cornerRadius(9)
                            
							Text("Most fruit are naturally low in fat, sodium, and calories. None have cholesterol. Fruits are sources of many essential nutrients, including potassium, dietary fibber, vitamins, and much more.")
								.font(.footnote)
						}
					}
					
					GroupBox(label: SettingsLabelView(labelText: "Customisation", labelImage: "paintbrush")) {
						Divider().padding(.vertical, 4)
						
						Text("If you wish, you can restart the application by toggle the switch in this box. That way it starts the onboarding process and you will see the welcome screen again.")
							.padding(.vertical, 8)
							.frame(minHeight: 60)
							.layoutPriority(1)
							.font(.footnote)
							.multilineTextAlignment(.leading)
						
						Toggle(isOn: $isOnboarding) {
							if isOnboarding {
								Text("Restarted".uppercased())
									.fontWeight(.bold)
									.foregroundColor(.green)
							} else {
								Text("Restart".uppercased())
									.fontWeight(.bold)
									.foregroundColor(.secondary)
                                
							}
						}
						.padding()
						.background(
							Color(UIColor.tertiarySystemBackground)
								.clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous))
						)
					}
                    
					GroupBox(label: SettingsLabelView(labelText: "Application", labelImage: "apps.iphone")) {
						SettingsRowView(name: "Developer", content: "iMakca")
						SettingsRowView(name: "Designer", content: "iMakca")
						SettingsRowView(name: "Compatibility", content: "iOS 14")
						SettingsRowView(name: "Website", linkLabel: "SwiftUI Apple", linkDestination: "apple.com")
						SettingsRowView(name: "Twitter", linkLabel: "@Apple", linkDestination: "twitter.com/Apple")
						SettingsRowView(name: "SwiftUI", content: "2.0")
						SettingsRowView(name: "Version", content: "1.1.0")
					}
				}
				.navigationBarTitle(Text("Setting"), displayMode: .large)
				.navigationBarItems(
					trailing:
						Button(action: {
							presentationMode.wrappedValue.dismiss()
						}) {
							Image(systemName: "xmark.circle")
						}
				)
				.padding()
			}
		}
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
