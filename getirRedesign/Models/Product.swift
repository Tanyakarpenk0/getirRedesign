//
//  Product.swift
//  getirRedesign
//
//  Created by Tatiana Karpenko on 17.11.2022.
//

import Foundation

struct Product: Identifiable {
    var id = UUID()
    var name: String
    var image: String
    var volume: Int
    var price: Double
}

var productList = [Product(name: "Aqua Panna", image: "water1", volume: 750, price: 0.80),
                   Product(name: "San Pellegrino", image: "water2", volume: 750, price: 0.95),
                   Product(name: "San Pellegrino Limpnata", image: "water3", volume: 330, price: 0.45),
                   Product(name: "San Pellegrino Chino", image: "water4", volume: 330, price: 0.45),
                   Product(name: "Sant'Anna 6x2L", image: "water5", volume: 2000, price: 5.25),
                   Product(name: "Sant'Anna", image: "water6", volume: 1500, price: 1.25),
                   Product(name: "Fonte Essenziale", image: "water7", volume: 1000, price: 1.00),
                   Product(name: "Levissima", image: "water8", volume: 500, price: 0.42),
                   Product(name: "Levissima Vitamine B", image: "water9", volume: 500, price: 0.50)]
