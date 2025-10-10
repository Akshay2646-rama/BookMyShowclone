//
//  LiveEventselection.swift
//  BMSapp
//
//  Created by Nxtwave on 09/10/25.
//

import SwiftUI

struct LiveEventselection: View {
    let events: [LiveEvent]
    let columns:[GridItem]=[GridItem(.flexible()),GridItem(.flexible())]
    @State private var selectedEvent : LiveEvent? = nil
    var body: some View {
        NavigationStack{
            LazyVGrid(columns: columns) {
                ForEach(events) { event in
                    VStack(alignment: .leading, spacing: 8) {
                        Image(event.posterImageName)
                            .resizable()
                            .scaledToFill()
                            .frame(width: 180, height: 240)
                            .clipped()
                            .cornerRadius(12)
                        
                        HStack {
                            Image(systemName: "star.fill")
                                .foregroundColor(.red)
                                .font(.system(size: 14))
                            Text("\(event.rating, specifier: "%.1f")/10")
                                .font(.subheadline)
                                .fontWeight(.semibold)
                            Text(event.votes)
                                .font(.caption)
                                .foregroundColor(.secondary)
                        }
                        .padding(.vertical, 2)
                        
                        Text(event.title)
                            .font(.headline)
                            .lineLimit(1)
                        
                        Text(event.category)
                            .font(.caption)
                            .foregroundColor(.secondary)
                            .lineLimit(1)
                    }
                    .frame(width: 180)
                    .padding()
                    .background(Color(.systemBackground))
                    .cornerRadius(14)
                    .shadow(radius: 3)
                    .onTapGesture {
                        selectedEvent = event
                    }
                }
            }
        }
    }
}

#Preview {
    LiveEventselection(events: mockLiveEvents)
}
