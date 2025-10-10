//
//  movieSelection.swift
//  BMSapp
//
//  Created by Nxtwave on 19/08/25.
//

import SwiftUI

struct movieSelection: View {
    @State private var movie: [Movie] = []
    @StateObject var viewModel: SigninViewModel
    @State private var errorMessage: String? = nil

    @Binding var MobileNum: String
    @State private var selectedMovie : Movie? = nil
    var body: some View {
        NavigationStack{
            ScrollView(.horizontal){
                HStack{
                    ForEach(movie,id: \.id) { movies in
                        VStack(alignment: .leading, spacing: 8) {
                            MovieRemoteImage(urlString: movies.posterImageName)
                                .scaledToFill()
                                .frame(width: 180, height: 240)
                                .clipped()
                                .cornerRadius(12)
    //                        AsyncImage(url: URL(string: movies.posterImageName)) { phase in
    //                                    switch phase {
    //                                    case .empty:
    //                                        ProgressView() // Show a loading indicator while fetching
    //                                            .frame(width: 200, height: 300)
    //                                    case .success(let image):
    //                                        image
    //                                            .resizable()
    //                                            .scaledToFill()
    //                                            .frame(width: 200, height: 300)
    //                                            .cornerRadius(10)
    //                                    case .failure(_):
    //                                        Image(systemName: "photo") // Fallback image
    //                                            .resizable()
    //                                            .scaledToFit()
    //                                            .frame(width: 200, height: 300)
    //                                    @unknown default:
    //                                        EmptyView()
    //                                    }
    //                                }
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
                               selectedMovie = movies
                           }
                        
                    }
                }
            }
            .navigationDestination(item : $selectedMovie){movie in
                movieSelectionDetail(movie: movie,viewModel: viewModel,MobileNum:$MobileNum)
                    .navigationBarBackButtonHidden()
                
            }
        }
        .task {
            do {
                movie = try await NetworkManager.shared.getAppetizers()
            } catch {
                errorMessage = error.localizedDescription
            }
        }
    }
}


#Preview {
    movieSelection(viewModel: SigninViewModel(),
                   
                   MobileNum: .constant("1234567890"))
}
