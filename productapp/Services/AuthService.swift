//
//  AuthService.swift
//  productapp
//
//  Created by Gobi on 17/2/24.
//

import Foundation

enum AuthError: Error {
    case invalidCredentials
}

protocol AuthService {
    func login(user: User, completion: @escaping (Result<Void, AuthError>) -> Void)
}

class MockAuthenticationService: AuthService {
    func login(user: User, completion: @escaping (Result<Void, AuthError>) -> Void) {
        
        if user.email == "user123@gmail.com" && user.password == "123456" {
            completion(.success(()))
        } else {
            completion(.failure(.invalidCredentials))
        }
    }
}
