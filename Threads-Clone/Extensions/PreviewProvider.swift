//
//  PreviewProvider.swift
//  Threads-Clone
//
//  Created by Vedran Novak on 09.09.2023..
//

import SwiftUI
import Firebase

extension PreviewProvider {
    static var dev: DeveloperPreview {
        return DeveloperPreview.shared
    }
}

class DeveloperPreview {
    static let shared = DeveloperPreview()
    
    let user = User(id: NSUUID().uuidString, fullname: "Luka Doncic", email: "lukadoncic77@gmail.com", username: "lukadoncic77")
    let thread = Thread(ownerUid: "12344565865", caption: "Hello this is my caption", timestamp: Timestamp(), likes: 0)
}
