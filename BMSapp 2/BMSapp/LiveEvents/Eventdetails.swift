//
//  Eventdetails.swift
//  BMSapp
//
//  Created by Nxtwave on 10/10/25.
//

import SwiftUI

struct Eventdetails: View {
    var event: LiveEvent

    var body: some View {
        NavigationStack{
            ScrollView{
                VStack(alignment: .leading, spacing: 20) {
                               
                               Image(event.posterImageName)
                                   .resizable()
                                   .scaledToFit()
                                   .cornerRadius(16)
                                   .shadow(radius: 8)
                               
                               Text(event.title)
                                   .font(.title)
                                   .fontWeight(.bold)
                                   .padding(.horizontal)
                               
                    VStack(alignment: .leading, spacing: 8) {
                        Label(event.city, systemImage: "mappin.and.ellipse")
                        Label("\(event.date) | \(event.time)", systemImage: "calendar")
                    }
                               .font(.subheadline)
                               .foregroundColor(.gray)
                               .padding(.horizontal)
                               
                               Text(event.description)
                                   .font(.body)
                                   .padding(.horizontal)
                               
                                   Text("Tickets from \(event.priceRange)")
                                       .font(.headline)
                                       .padding(.horizontal)
                                Spacer()
                    Button {
                        
                    } label: {
                        
                        Text("Book Now")
                            .frame(maxWidth: .infinity)
                            .padding()
                            .background(Color.red)
                            .foregroundColor(.white)
                            .cornerRadius(12)
                            .padding(.horizontal)
                    }
                        
                               }
                
                           .padding(.bottom)
                       }
                       .navigationTitle("Event Details")
                       .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    Eventdetails(event: mockLiveEvents[0])
}
