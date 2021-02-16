//
//  FruitModel.swift
//  Fructs
//
//  Created by Maxim Granchenko on 16.02.2021.
//

import SwiftUI

struct FruitModel: Identifiable {
    var id = UUID()
    var title: String
    var headling: String
    var image: String
    var gradientColor: [Color]
    var description: String
    var nutrition: [String]
}
