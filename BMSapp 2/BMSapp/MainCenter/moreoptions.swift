//
//  moreoptions.swift
//  BMSapp
//
//  Created by Nxtwave on 19/08/25.
//

import SwiftUI

struct moreoptions: View {
    var body: some View {
        ScrollView(.horizontal){
            HStack(spacing: 20){
                VStack{
                    Image(systemName: "film")
                        .resizable()
                        .frame(width: 30, height: 30)
                    Text("Movies")
                }
                VStack{
                    Image(systemName: "movieclapper")
                        .resizable()
                        .frame(width: 30, height: 30)
                    Text("HSBC Lounge")
                }
                VStack{
                    Image(systemName: "play.rectangle.fill")
                        .resizable()
                        .frame(width: 30, height: 30)
                    Text("Stream")
                }
                VStack{
                    Image(systemName: "music.microphone")
                        .resizable()
                        .frame(width: 30, height: 30)
                    Text("Movies")
                }
                VStack{
                    Image(systemName: "figure.disc.sports.circle.fill")
                        .resizable()
                        .frame(width: 30, height: 30)
                    Text("Movies")
                }
            }
        }
        .padding()
    }
}

#Preview {
    moreoptions()
}
