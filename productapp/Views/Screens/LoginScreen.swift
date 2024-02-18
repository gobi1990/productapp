//
//  LoginScreen.swift
//  productapp
//
//  Created by Gobi on 17/2/24.
//

import Foundation
import SwiftUI

struct LoginView: View {
    @ObservedObject var viewModel: AuthViewModel

    var body: some View {
        ZStack(){
         LinearGradient(
            gradient: Gradient(colors: [.blue, Color("lightBlue")]),
                                startPoint: .topLeading,
                                endPoint: .bottomTrailing)
         .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)

                        
            VStack(alignment: .center) {
                Image("applogo")
                    .resizable()
                    .frame(width: 100, height: 100)
                    .aspectRatio(contentMode: .fit)
                    .cornerRadius(10)

                Text("Welcome,\n Glad you See you!")
                    .font(.custom(
                            "AmericanTypewriter",
                            fixedSize: 34)
                            .weight(.heavy)
                    ).foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    

                CustomInputField(textField: TextField("Email", text: $viewModel.email), imageName: "doc.plaintext")
                    .padding(.bottom, 20)
                
                
                CustomInputField(textField: TextField("Password", text: $viewModel.password), imageName: "key")
                    .padding(.bottom, 40)


                CustomButton(text: "Login", icon: Image(systemName: "send") , btnColor: Color.blue , textColor: Color.white , width: 320 ){
                    viewModel.login()
                            }
                .padding()
                CustomButton(text: "Register", icon: Image(systemName: "send") , btnColor: Color.blue , textColor: Color.white , width: 320 ){
                    
                            }
                .padding()
            }
            .padding()
            .alert(isPresented: $viewModel.showError) {
                Alert(title: Text("Error"), message: Text(viewModel.errorMessage), dismissButton: .default(Text("OK")))
            }
            .sheet(isPresented: $viewModel.showCongratsPopup) {
    //            CongratsPopupView()
            }
        }
        }
        
}

#Preview {
    ContentView()
}


