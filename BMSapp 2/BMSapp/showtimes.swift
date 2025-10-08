import SwiftUI

struct showtimes: View {
    let movie: Movie
    @State private var bookingSelection: BookingSelection?
    @State private var selectedTheater: String? = nil

    let dates = ["28 Sep 2025", "29 Sep 2025", "30 Sep 2025"]

    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(alignment: .leading, spacing: 20) {

                    Text("Showtimes")
                        .font(.system(size: 22, weight: .bold))
                        .padding(.top, 16)
                        .padding(.horizontal)

                    Text(movie.title)
                        .font(.title2)
                        .fontWeight(.semibold)
                        .padding(.horizontal)

                    VStack(spacing: 16) {
                        ForEach(movie.theaterNames, id: \.self) { theater in
                            TheaterRow(
                                theater: theater,
                                isExpanded: selectedTheater == theater,
                                onTap: { tappedTheater in
                                    withAnimation {
                                        selectedTheater = (selectedTheater == tappedTheater) ? nil : tappedTheater
                                    }
                                },
                                dates: dates,
                                showTimes: movie.showTimes,
                                onShowtimeTap: { date, time in
                                    bookingSelection = BookingSelection(date: date, showTime: time)
                                }
                            )
                        }
                    }
                    .padding(.horizontal)
                }
            }
            .sheet(item: $bookingSelection) { selection in
                Booking_screen(
                    movie: movie,
                    date: selection.date,
                    showTime: selection.showTime,
                    theater: selectedTheater ?? movie.theaterNames.first!
                )
            }
        }
    }
}

struct TheaterRow: View {
    let theater: String
    let isExpanded: Bool
    let onTap: (String) -> Void
    let dates: [String]
    let showTimes: [String]
    let onShowtimeTap: (String, String) -> Void

    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Button {
                onTap(theater)
            } label: {
                HStack {
                    Text(theater)
                        .font(.headline)
                        .foregroundStyle(Color.red)
                    Spacer()
                    Image(systemName: isExpanded ? "chevron.up" : "chevron.down")
                        .foregroundColor(.gray)
                }
                .padding()
                .background(Color.gray.opacity(0.15))
                .cornerRadius(10)
            }

            if isExpanded {
                VStack(alignment: .leading, spacing: 12) {
                    ForEach(dates, id: \.self) { date in
                        DateRow(date: date, showTimes: showTimes, onShowtimeTap: { time in
                            onShowtimeTap(date, time)
                        })
                    }
                }
                .padding(.horizontal)
            }
        }
    }
}


struct DateRow: View {
    let date: String
    let showTimes: [String]
    let onShowtimeTap: (String) -> Void

    var body: some View {
        VStack(alignment: .leading) {
            Text(date)
                .font(.headline)
                .padding(.bottom, 4)
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 12) {
                    ForEach(showTimes, id: \.self) { time in
                        Button {
                            onShowtimeTap(time)
                        } label: {
                            Text(time)
                                .font(.subheadline)
                                .fontWeight(.medium)
                                .padding(.horizontal, 16)
                                .padding(.vertical, 10)
                                .foregroundColor(.green)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 12)
                                        .stroke(Color.green, lineWidth: 1)
                                )
                                .cornerRadius(12)
                        }
                    }
                }
            }
        }
    }
}

// Preview

#Preview {
    showtimes(movie: mockMovies[0])
}
