//
//  SigninPage.swift
//  BMSapp
//
//  Created by Nxtwave on 13/09/25.
//

import SwiftUI
import GoogleSignIn
import GoogleSignInSwift


struct SigninPage: View {
    @State private var phoneNumber: String = ""
    @State private var isSignedIn: Bool = false
    @StateObject var viewModel = SigninViewModel()
    @State var showAlert : Bool = false
    var body: some View {
        NavigationStack{
            VStack{
                GoogleSignInButton {
                    Task {
                        await viewModel.Signin()
                        isSignedIn = true
                    }
                }
                .padding()
                if let errorMessage = viewModel.error{
                    Text(errorMessage)
                }
                Text("Or")
                HStack {
                    
                    Text("🇮🇳  +91")
                        .fontWeight(.medium)
                    
                    TextField("Continue with mobile number", text: $phoneNumber)
                        .keyboardType(.numberPad)
                        .foregroundColor(.black)
                }
                .padding(.vertical, 10)
                .padding(.horizontal)
                Button{
                    if (phoneNumber != ""){
                        isSignedIn = true
                    }else{
                        isSignedIn = false
                        showAlert = true
                    }
                } label:{
                    Text("Log In")
                        .frame(width:100)
                        .padding()
                        .background(.blue)
                        .cornerRadius(10)
                        .shadow(radius: 10)
                        .foregroundStyle(Color.white)
                }
                
            }
            .padding()
            
            
            .navigationDestination(isPresented: $isSignedIn) {
                Tabview(viewModel: viewModel, MobileNum: $phoneNumber)
                    .navigationBarBackButtonHidden()
            }
            .alert(isPresented: $showAlert) {
                        Alert(
                            title: Text("Empty Details"),
                            message: Text("Please Enter Your Details!"),
                            dismissButton: .default(Text("OK"))
                        )
                    }
        }
    }
}

#Preview {
    SigninPage()
}
