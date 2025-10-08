//
//  movieSelection.swift
//  BMSapp
//
//  Created by Nxtwave on 19/08/25.
//

import SwiftUI

struct movieSelection: View {
    var movie:[Movie]
    @StateObject var viewModel: SigninViewModel
    @Binding var MobileNum: String
    @State private var selectedMovie : Movie? = nil
    var body: some View {
        NavigationStack{
            ScrollView(.horizontal){
                HStack{
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
            .navigationDestination(item : $selectedMovie){movie in
                movieSelectionDetail(movie: movie,viewModel: viewModel,MobileNum:$MobileNum)
                    .navigationBarBackButtonHidden()
                
            }
        }
    }
}


