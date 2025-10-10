//
//  LiveEvents.swift
//  BMSapp
//
//  Created by Nxtwave on 08/10/25.
//

import SwiftUI

struct LiveEvents: View {
    var body: some View {
        NavigationStack{
            ZStack{
                VStack{
                    HStack{
                        VStack(alignment:.leading){
                            Text("It all Starts Here!")
                                .font(.system(size: 25, weight: .bold, design: .default))
                            HStack{
                                Text("Hyderabad")
                                    .font(.system(size: 15, weight: .semibold, design: .default))
                                Image(systemName: "arrow.right")
                            }
                            .foregroundStyle(Color.red)
                        }
                        Spacer()
                        Image(systemName: "magnifyingglass")
                    }
                    .padding()
                    Divider()
                    Spacer()
                    ScrollView{
                        EventCard()
                        Carusoleliveevents()
                        LiveEventselection(events: mockLiveEvents)
                    }
                }
            }
        }
    }
}

#Preview {
    LiveEvents()
}
