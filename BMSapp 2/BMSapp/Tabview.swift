//
//  Tabview.swift
//  BMSapp
//
//  Created by Nxtwave on 15/09/25.
//

import SwiftUI


struct Tabview: View {
    @StateObject var viewModel: SigninViewModel
    @Binding var MobileNum: String
    var body: some View {
        if let profile = viewModel.profile{
            TabView {
                ContentView(viewModel: viewModel, MobileNum: $MobileNum)
                    .tabItem{
                        Image(systemName: "house")
                        Text("Home")
                    }
                
                movies(movie: mockMovies,viewModel:  viewModel, MobileNum: $MobileNum)
                    .tabItem {
                        Image(systemName: "film")
                        Text("Movies")
                    }
                
                Accout(viewModel: viewModel)
                    .tabItem {
                        Image(systemName: "person.circle")
                        Text("Account")
                    }
            }
        }else if(!MobileNum.isEmpty){
            TabView {
                ContentView(viewModel: viewModel, MobileNum: $MobileNum)
                    .tabItem{
                        Image(systemName: "house")
                        Text("Home")
                    }
                
                movies(movie: mockMovies,viewModel:  viewModel, MobileNum: $MobileNum)
                    .tabItem {
                        Image(systemName: "film")
                        Text("Movies")
                    }
                
                Accout()
                    .tabItem {
                        Image(systemName: "person.circle")
                        Text("Account")
                    }
            }
        }else{
            SigninPage()
        }
    }
}

#Preview {
    Tabview(
        viewModel: SigninViewModel(),
    
        MobileNum: .constant("1234567890")
    )
}
