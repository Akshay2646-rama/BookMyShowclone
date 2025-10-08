//
//  Booking screen.swift
//  BMSapp
//
//  Created by Nxtwave on 04/09/25.
//
import SwiftUI

struct Booking_screen: View {
    var movie: Movie
    var date: String
    var showTime: String
    var theater: String

    @State private var selectedSeats: [String] = []
    let column: [GridItem] = Array(repeating: GridItem(.flexible()), count: 6)
    @State private var isBook: Bool = false

    let ticketPrice: Int = 200

    var totalPrice: Int {
        selectedSeats.count * ticketPrice
    }
    var body: some View {
        NavigationStack {
            VStack {
                Text("Select Seats for \(movie.title)")
                    .font(.headline)
                    .padding(.top)
                
                Text("Theater: \(theater)")
                                    .font(.headline)
                                    .foregroundColor(.gray)


                Text("Date: \(date)")
                    .font(.subheadline)
                    .foregroundColor(.gray)

                Text("Showtime: \(showTime)")
                    .font(.subheadline)
                    .foregroundColor(.gray)

                Spacer()

                LazyVGrid(columns: column) {
                    ForEach(movie.seats, id: \.self) { seat in
                        Button {
                            if selectedSeats.contains(seat) {
                                selectedSeats.removeAll { $0 == seat }
                            } else {
                                selectedSeats.append(seat)
                            }
                        } label: {
                            Text(seat)
                                .frame(width: 60, height: 40)
                                .background(selectedSeats.contains(seat) ? Color.green : Color.gray)
                                .foregroundColor(.white)
                                .cornerRadius(8)
                                .padding()
                        }
                    }
                }

                Spacer()
                VStack(spacing: 8) {
                            
                            Rectangle()
                                .fill(Color.blue.opacity(0.2))
                                .frame(width: 270, height: 8)
                                .cornerRadius(8)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 8)
                                        .stroke(Color.blue.opacity(0.3), lineWidth: 2)
                                )
                            Text("All eyes this way please!")
                                .font(.subheadline)
                                .foregroundColor(.gray)
                        }
                        .padding(.top, 8)
                if !selectedSeats.isEmpty {
                    Text("Total: ₹\(totalPrice)")
                        .font(.title3)
                        .bold()
                        .padding()
                        .padding(.bottom, 10)
                }

                Button {
                    isBook = true
                } label: {
                    Text("Confirm Booking")
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(selectedSeats.isEmpty ? Color.gray : Color.red)
                        .foregroundColor(.white)
                        .cornerRadius(12)
                        .padding()
                }
                .disabled(selectedSeats.isEmpty) 
            }
            .padding()
            .navigationDestination(isPresented: $isBook) {
                ConfimationScreen(
                    movie: movie,
                    date: date,
                    theater: theater,
                    time: showTime,
                    seats: selectedSeats,
                    totalPrice: totalPrice
                )
            }
        }
    }
}

#Preview {
    Booking_screen(movie: mockMovies[0], date: "28-9-25", showTime: "9:30 AM", theater: "AMB Cienma")
}
