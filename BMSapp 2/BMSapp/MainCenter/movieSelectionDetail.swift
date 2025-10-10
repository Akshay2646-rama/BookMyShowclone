//
//  movieSelectionDetail.swift
//  BMSapp
//
//  Created by Nxtwave on 19/08/25.
//

import SwiftUI

struct movieSelectionDetail: View {
    var movie: Movie
    @StateObject var viewModel: SigninViewModel
    @Binding var MobileNum: String
    @State var isclicked: Bool = false
    @Environment(\.dismiss) var dismiss
    @State var isback: Bool = false

    var body: some View {
        NavigationStack {
            ScrollView {
                
                VStack(alignment: .leading, spacing: 16) {
                    HStack{
                        Button {
                            isback=true
                        } label: {
                            HStack{
                                Image(systemName: "chevron.left")
                                    .font(.system(size: 20, weight: .medium))
                                Text("Back")
                            }
                        }
                        .padding()
                    }
                    VStack(alignment: .leading, spacing: 8) {
                        MovieRemoteImage(urlString: movie.posterImageName)                           .scaledToFill()
                            .frame(height: 200)
                            .clipped()
                            .cornerRadius(12)
                        Text("In cinemas")
                            .font(.subheadline)
                            .foregroundColor(.secondary)
                    }
                    

                    HStack {
                        Image(systemName: "star.fill")
                            .foregroundColor(.red)
                        Text(String(format: "%.1f/10", movie.rating))
                        Text("(\(movie.votes))")
                            .foregroundColor(.secondary)
                        Spacer()
                        Button("Rate now") {
                        }
                        .font(.subheadline)
                        .padding(6)
                        .background(Color.gray.opacity(0.5))
                        .cornerRadius(8)
                    }
                    .font(.subheadline)
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 6) {
                            ForEach(movie.formats, id: \.self) {
                                format in
                                Text(format)
                                    .font(.caption)
                                    .padding(.vertical, 2)
                                    .padding(.horizontal, 6)
                                    .background(Color(.systemGray5))
                                    .cornerRadius(8)
                            }
                            ForEach(movie.languages, id: \.self) {
                                lang in
                                Text(lang)
                                    .font(.caption)
                                    .padding(.vertical, 2)
                                    .padding(.horizontal, 6)
                                    .background(Color(.systemGray5))
                                    .cornerRadius(8)
                            }
                        }
                    }
                    
                    Text("\(movie.duration) • \(movie.genre) • UA16+ • \(movie.releaseDate)")
                        .font(.caption)
                        .foregroundColor(.secondary)
                    
                    Text(movie.description)
                        .font(.body)
                    
                    HStack {
                        Label("Trending", systemImage: "arrow.up.right")
                            .foregroundColor(.blue)
                        Text("9.25K tickets booked in last 1 hour")
                            .font(.caption)
                            .foregroundColor(.secondary)
                    }
                    .padding(.vertical, 4)
                    
                    VStack(alignment: .leading, spacing: 6) {
                        Text("Top reviews")
                            .font(.headline)
                        Text("Summary of 71K reviews. Tap a hashtag to read more.")
                            .font(.caption)
                            .foregroundColor(.secondary)
                        
                        ScrollView(.horizontal) {
                            HStack(spacing: 8) {
                                ForEach(movie.tags, id: \.self) { tag in
                                    Text("#\(tag)")
                                        .padding(.horizontal, 10)
                                        .padding(.vertical, 4)
                                        .background(Color(.systemGray5))
                                        .cornerRadius(8)
                                }
                            }
                        }
                        
                        VStack(alignment: .leading, spacing: 2) {
                            Text("manjunath")
                                .font(.caption)
                                .fontWeight(.medium)
                            HStack {
                                Image(systemName: "star.fill")
                                    .foregroundColor(.red)
                                Text("10/10")
                            }
                            .font(.caption)
                        }
                        .padding(.top, 8)
                    }
                    
                    Spacer(minLength: 80)
                }
                .padding()
            }
            .navigationBarTitle(movie.title, displayMode: .inline)
            .safeAreaInset(edge: .bottom) {
                Button{
                    isclicked = true
                }label: {
                    Text("Book tickets")
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.pink)
                        .foregroundColor(.white)
                        .font(.headline)
                        .cornerRadius(12)
                }
                .padding([.horizontal, .bottom])
            }
            .sheet(isPresented: $isclicked){
                showtimes(movie: movie)
            }
            .navigationDestination(isPresented: $isback) {
                Tabview(viewModel: viewModel, MobileNum: $MobileNum)
                    .navigationBarBackButtonHidden()
            }
        }
    }
}

