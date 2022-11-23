//
//  ContentView.swift
//  getirRedesign
//
//  Created by Tatiana Karpenko on 17.11.2022.
//

import SwiftUI

struct ContentView: View {
    var columns = [GridItem(.adaptive(minimum: 60), spacing: 50)]
    
    var body: some View {
       NavigationView {
            ScrollView {
                LazyVGrid(columns: columns, spacing: 40) {
                    ForEach(productList, id: \.id) { product in ProductView (product: product)
                            .padding()
                    }
                }
                .padding()
            }
            .navigationTitle(Text("Water and drinks"))
        }
    }
     
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
