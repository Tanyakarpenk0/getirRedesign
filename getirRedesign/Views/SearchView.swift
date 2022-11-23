//
//  SearchView.swift
//  getirRedesign
//
//  Created by Tatiana Karpenko on 23.11.2022.
//

import SwiftUI

struct SearchView: View {
        @Binding var text: String
     
        @State private var isEditing = false
     
        var body: some View {
            HStack {
     
                TextField("Search ...", text: $text)
                    .padding(7)
                    .padding(.horizontal, 25)
                    .background(Color(.systemGray6))
                    .cornerRadius(8)
                    .padding(.horizontal, 10)
                    .onTapGesture {
                        self.isEditing = true
                    }
     
                if isEditing {
                    Button(action: {
                        self.isEditing = false
                        self.text = ""
     
                    }) {
                        Text("Cancel")
                    }
                    .padding(.trailing, 10)
                    .transition(.move(edge: .trailing))
                    
                }
            }
        }
    }

struct SearchBar_Previews: PreviewProvider {
    static var previews: some View {
        SearchView(text: .constant(""))
    }
}
