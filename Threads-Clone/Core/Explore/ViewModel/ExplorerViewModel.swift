//
//  ExplorerViewModel.swift
//  Threads-Clone
//
//  Created by Vedran Novak on 10.09.2023..
//

import Foundation

class ExplorerViewModel: ObservableObject {
    @Published var users = [User]()
    
    init() {
        Task { try await fetchUsers() }
    }
    
    @MainActor
    private func fetchUsers() async throws {
        self.users = try await UserService.fetchUsers()
    }
}
