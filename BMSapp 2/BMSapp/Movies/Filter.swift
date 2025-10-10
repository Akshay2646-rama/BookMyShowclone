//
//  Filter.swift
//  BMSapp
//
//  Created by Nxtwave on 05/09/25.
//

import SwiftUI

struct Filter: View {
    let categories = ["New Releases", "Hindi", "Telugu", "English", "Malayalam"]
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 10) {
                ForEach(categories, id: \.self) { category in
                    Text(category)
                        .font(.caption)
                        .foregroundColor(.red )
                        .padding(.horizontal,10)
                        .padding(.vertical,3)
                        .background(Capsule()
                            .stroke(Color.black))
                        .padding(5)
                        
                }
            }
            .padding()
        }
    }
}

#Preview {
    Filter()
}
