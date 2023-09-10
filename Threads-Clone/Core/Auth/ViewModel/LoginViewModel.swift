//
//  RegistrationViewModel.swift
//  Threads-Clone
//
//  Created by Vedran Novak on 04.09.2023..
//

import Foundation

class LoginViewModel: ObservableObject {
    @Published var email = ""
    @Published var password = ""
    
    @MainActor
    func login() async throws {
        try await AuthService.shared.login(
            withEmail: email,
            password: password
        )
    }
}
