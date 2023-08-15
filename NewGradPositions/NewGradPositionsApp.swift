//
//  NewGradPositionsApp.swift
//  NewGradPositions
//
//  Created by Saketh Renangi on 8/12/23.
//

import Amplify
import Authenticator
import AWSCognitoAuthPlugin
import SwiftUI

@main
struct NewGradPositionsApp: App {
    init() {
        do {
            try Amplify.add(plugin: AWSCognitoAuthPlugin())
            try Amplify.configure()
        } catch {
            print("Unable to configure Amplify \(error)")
        }
    }

    var body: some Scene {
        WindowGroup {
            Authenticator { state in
                VStack {
                    Text("Hello, \(state.user.username)")
                    Button("Sign out") {
                        Task {
                            await state.signOut()
                        }
                    }
                }
            }
        }
    }
}
