//
//  ContentView.swift
//  BMSapp
//
//  Created by Nxtwave on 19/08/25.
//

import SwiftUI

struct ContentView: View {
    @State private var movie: [Movie] = []
    @State private var errorMessage: String? = nil
    @StateObject var viewModel: SigninViewModel
    @Binding var MobileNum: String
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
                        Image(systemName: "bell")
                        Image(systemName: "qrcode.viewfinder")
                    }
                    .padding()
                    Divider()
                    Spacer()
                    ScrollView{
                        moreoptions()
                        Carusoles()
                        movieSelection(viewModel: viewModel,MobileNum: $MobileNum)
                            .padding(.horizontal)
                    }
                }
            }
        }
        
    }
}

#Preview {
    ContentView(viewModel: SigninViewModel(),
                
                MobileNum: .constant("1234567890")
    )
}
