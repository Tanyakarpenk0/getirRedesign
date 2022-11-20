//
//  ProductView.swift
//  getirRedesign
//
//  Created by Tatiana Karpenko on 17.11.2022.
//

import SwiftUI

struct ProductView: View {
    var product: Product
    
    var body: some View {
        
        ZStack(alignment: .bottom) {
            RoundedRectangle(cornerRadius: 25, style: .continuous).foregroundColor(Color(UIColor(named: "Card")!))
            
            Image(product.image)
                .resizable()
                .cornerRadius(20)
                .frame(width:105, height: 150)
            
            VStack(alignment: .leading) {
                Text(product.name)
                    .bold()
                Text("\(product.price)$")
                    .font(.caption)
                
            }
            
        }
        .frame(width:200, height:200)
    }
    
    struct ProductView_Previews: PreviewProvider {
        static var previews: some View {
            ProductView(product: productList[0])
        }
    }
}
