//
//  Movies.swift
//  BMSapp
//
//  Created by Nxtwave on 19/08/25.
//

import SwiftUI

struct Movies: View {
    var body: some View {
        VStack{
            HStack{
                Text("Recommended Movies")
                    .font(.system(size: 20, weight: .semibold, design: .serif))
                Spacer()
                HStack{
                    Text("See All")
                    Image(systemName: "arrow.right")
                }
                .foregroundStyle(.red)
            }.padding()
        }
    }
}

#Preview {
    Movies()
}
