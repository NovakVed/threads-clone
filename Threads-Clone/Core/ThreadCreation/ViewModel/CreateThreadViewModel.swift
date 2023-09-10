//
//  ThreadCreationViewModel.swift
//  Threads-Clone
//
//  Created by Vedran Novak on 10.09.2023..
//

import Firebase

class CreateThreadViewModel: ObservableObject {
    @Published var caption = ""
    
    func uploadThread() async throws {
        guard let uid = Auth.auth().currentUser?.uid else { return }
        let thread = Thread(ownerUid: uid, caption: caption, timestamp: Timestamp(), likes: 0)
        try await ThreadService.uploadThread(thread)
    }
}
