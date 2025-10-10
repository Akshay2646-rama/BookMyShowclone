//
//  EventCard.swift
//  BMSapp
//
//  Created by Nxtwave on 09/10/25.
//

import SwiftUI

struct EventCard: View {
    var body: some View {
           VStack(alignment: .leading, spacing: 12) {
               Text("Sunburn Arena ft. Francis Mercier")
                   .font(.headline)
               
               Text("India Tour 2025")
                   .font(.subheadline)
                   .foregroundColor(.gray)
               
               EventVideo(videoURL: URL(string: "https://res.cloudinary.com/akshay-ccbp-tech/video/upload/v1759984000/WhatsApp_Video_2025-10-09_at_09.55.34_unfnwx.mp4")!)
               
               
               Text("Get ready for the Sóley experience!")
                   .font(.subheadline)
               
               Button(action: {
                   print("Book Now tapped")
               }) {
                   Text("Book Now")
                       .frame(maxWidth: .infinity)
                       .padding()
                       .background(Color.pink)
                       .foregroundColor(.white)
                       .cornerRadius(10)
               }
           }
           .padding()
       }
   }

#Preview {
    EventCard()
}
