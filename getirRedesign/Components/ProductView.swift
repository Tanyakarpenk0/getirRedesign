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
        
        ZStack(alignment: .bottom){
            RoundedRectangle(cornerRadius: 25, style: .continuous).foregroundColor(Color(UIColor(named: "Card")!))
            
            VStack {
                Image(product.image)
                    .resizable()
                    .cornerRadius(20)
                    .frame(width:105, height: 150)
            
                Text(product.name)
                    .bold()
                Text("\(product.price, specifier: "%.2f")$")
                    .bold()
                Text("\(product.volume)mL").font(.caption)
            }
            .padding()
            
        }
        .frame(width:150, height:200)
    }
    
    struct ProductView_Previews: PreviewProvider {
        static var previews: some View {
            ProductView(product: productList[0])
        }
    }
}
