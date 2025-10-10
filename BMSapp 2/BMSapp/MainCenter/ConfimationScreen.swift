//
//  ConfimationScreen.swift
//  BMSapp
//
//  Created by Nxtwave on 05/09/25.
//

import SwiftUI

struct ConfimationScreen: View {
    let movie: Movie
    let date: String
    let theater: String
    let time: String
    let seats: [String]
    let totalPrice: Int

    var body: some View {
        NavigationStack {
            VStack(spacing: 20) {
                Text("🎉")
                    .font(.largeTitle)

                Text("Booking Confirmed")
                    .font(.largeTitle)
                    .bold()

                Text("Movie: \(movie.title)")
                Text("Theater: \(theater)")
                Text("Date: \(date)")
                Text("Time: \(time)")

                Text("Seats: \(seats.joined(separator: ", "))")
                    .bold()

                Text("Total Paid: ₹\(totalPrice)")
                    .font(.title3)
                    .bold()
                    .foregroundColor(.green)

                Spacer()
            }
            .padding()
        }
    }
}
//
//#Preview {
//    ConfimationScreen(
////        movie: mockMovies[0],
//        date: "28-9-25", theater: "PVR Cinemas",
//        time: "9:30 AM",
//        seats: ["A1", "A2", "A3"],
//        totalPrice: 600
//    )
//}
