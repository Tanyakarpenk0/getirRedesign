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
        
        ZStack(alignment: .bottomLeading) {
            ZStack(alignment: .center){
                RoundedRectangle(cornerRadius: 25, style: .continuous).foregroundColor(Color(UIColor(named: "Card")!))
                
                VStack (alignment: .center) {
                    Image(product.image)
                        .resizable()
                        .cornerRadius(20)
                        .frame(width:100, height: 115)
                        .padding(10)
                  
                        Text("\(product.price, specifier: "%.2f")$")
                        .bold()
                        Text(product.name)
                        Text("\(product.volume)mL").font(.caption)
                    
                    Button {
                        print("Added to cart!")
                    } label: {
                        Image(systemName: "plus")
                            .padding(10)
                            .foregroundColor(.black)
                            .background(.white)
                            .cornerRadius(10)
                            .padding(5)
                    }
                }
            }
        }
            
        .padding(40)
        .frame(width:90, height:200)
        
        }
    }
    
    struct ProductView_Previews: PreviewProvider {
        static var previews: some View {
            ProductView(product: productList[0])
        }
    }
    

