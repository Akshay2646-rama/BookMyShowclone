//
//  Accout.swift
//  BMSapp
//
//  Created by Nxtwave on 15/09/25.
//

import SwiftUI
import GoogleSignIn
import GoogleSignInSwift


struct Accout: View {
    @StateObject var viewModel = SigninViewModel()
    
    var body: some View {
        if let profile = viewModel.profile{
            NavigationStack{
                ZStack{
                    VStack(spacing: 12) {
                                        if let url = profile.imageURL {
                                            AsyncImage(url: url) { image in
                                                image.resizable()
                                                    .scaledToFill()
                                                    .frame(width: 100, height: 100)
                                                    .clipShape(Circle())
                                            } placeholder: {
                                                ProgressView()
                                            }
                                        }

                                        Text("Welcome, \(profile.name)")
                                            .font(.title2)
                                            .bold()
                                        Text(profile.email)
                                            .font(.subheadline)
                                            .foregroundColor(.gray)

                                        Button("Sign Out") {
                                            viewModel.signOut()
                                        }
                                        .padding()
                                        .background(Color.red.opacity(0.8))
                                        .foregroundColor(.white)
                                        .cornerRadius(12)
                                    }
                }
            }
        }
    }
}

#Preview {
    Accout()
}
