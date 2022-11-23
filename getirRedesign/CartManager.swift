//
//  CartManager.swift
//  getirRedesign
//
//  Created by Tatiana Karpenko on 23.11.2022.
//

import Foundation

class CartManager: ObservableObject {
    @Published private(set) var products: [Product] = []
    @Published private(set) var total: Int = 0
    
    func addToCart(product: Product) {
        products.append(product)
    }
    
    func removeFromCart(product: Product) {
        products = products.filter { $0.id != product.id}
    }
}
