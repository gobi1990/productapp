//
//  ContentView.swift
//  productapp
//
//  Created by Gobi on 17/2/24.
//

import SwiftUI

struct ContentView: View {
    let authService: AuthService = MockAuthenticationService()

    var body: some View {
        LoginView(viewModel: AuthViewModel(authenticationService: authService))
    }
}


#Preview {
    ContentView()
}
