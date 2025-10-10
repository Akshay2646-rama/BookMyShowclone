//
//  Carusoleliveevents.swift
//  BMSapp
//
//  Created by Nxtwave on 08/10/25.
//

import SwiftUI
import Combine

struct Carusoleliveevents: View {
    let images = ["arijit_live", "sunburn_hyd", "virdas_show"]
    @State private var currentIndex = 0
    
    var body: some View {
        TabView(selection: $currentIndex) {
            ForEach(images.indices, id: \.self) { index in
                Image(images[index])
                    .resizable()
                    .scaledToFit()
                    .frame(height: 200)
                    .clipped()
                    .cornerRadius(10)
                    .padding()
                    .tag(index)
            }
        }
        .frame(height: 220)
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .automatic))
        .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
        .onReceive(Timer.publish(every: 2, on: .main, in: .common).autoconnect()) { _ in
            withAnimation {
                currentIndex = (currentIndex + 1) % images.count
            }
        }
    }
}

#Preview {
    Carusoleliveevents()
}
