//
//  AuthViewModel.swift
//  productapp
//
//  Created by Gobi on 17/2/24.
//

import Foundation
import SwiftUI

class AuthViewModel: ObservableObject {
    @Published var email: String = ""
    @Published var password: String = ""
    @Published var showError: Bool = false
    @Published var errorMessage: String = ""
    @Published var showCongratsPopup: Bool = false

    private let authenticationService: AuthService

    init(authenticationService: AuthService) {
        self.authenticationService = authenticationService
    }

    func login() {
        let user = User(email: email, password: password)
//        authenticationService.login(user: user) { result in
//            switch result {
//            case .success:
//                showCongratsPopup = true
//            case .failure(let error):
//                showError = true
//                errorMessage = error.localizedDescription
//            }
//        }
    }
}
