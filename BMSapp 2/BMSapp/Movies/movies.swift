//
//  movies.swift
//  BMSapp
//
//  Created by Nxtwave on 05/09/25.
//

import SwiftUI

struct movies: View {
    let movie: [Movie]
    let colums:[GridItem]=[GridItem(.flexible()),GridItem(.flexible())]
    @State private var selectedMovie : Movie? = nil
    @StateObject var viewModel: SigninViewModel
    @Binding var MobileNum: String
    var body: some View {
        NavigationStack{
            ZStack{
                VStack{
                    HStack{
                        Text("Now showing")
                        Spacer()
                        Image(systemName: "magnifyingglass")
                    }
                    .padding()
                    HStack{
                        Text("Hyderbad | 22 Movies")
                            .foregroundStyle(.gray)
                        Spacer()
                    }
                    .padding(.horizontal)
                    ScrollView{
                    Carusoles()
                    Filter()
                        LazyVGrid(columns: colums) {
                            ForEach(movie) { movies in
                                VStack(alignment: .leading, spacing: 8) {
                                    Image(movies.posterImageName)
                                        .resizable()
                                        .scaledToFill()
                                        .frame(width: 180, height: 240)
                                        .clipped()
                                        .cornerRadius(12)
                                    
                                    HStack {
                                        Image(systemName: "star.fill")
                                            .foregroundColor(.red)
                                            .font(.system(size: 14))
                                        Text("\(movies.rating, specifier: "%.1f")/10")
                                            .font(.subheadline)
                                            .fontWeight(.semibold)
                                        Text(movies.votes)
                                            .font(.caption)
                                            .foregroundColor(.secondary)
                                    }
                                    .padding(.vertical, 2)
                                    
                                    Text(movies.title)
                                        .font(.headline)
                                        .lineLimit(1)
                                    
                                    Text(movies.genre)
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
                                    selectedMovie=movies
                                }
                            }
                        }
                    }
                }
            }
            .navigationDestination(item : $selectedMovie){movie in
                movieSelectionDetail(movie: movie,viewModel: viewModel,MobileNum:$MobileNum)
                    .navigationBarBackButtonHidden()
            }
        }
    }
}

#Preview {
    movies(
        movie: mockMovies,
        viewModel: SigninViewModel(),
        MobileNum: .constant("1234567890")
    )
}
