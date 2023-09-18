//
//  JokeTheAppApp.swift
//  JokeTheApp
//
//  Created by Jonas Wåhslén on 2020-11-16.
//

import SwiftUI

@main
struct JokeTheAppApp: App {
    let aVM = JokeVM()
    var body: some Scene {
        WindowGroup {
            MainView(TheJokeVM: aVM)
        }
    }
}

struct JokeTheAppApp_Previews: PreviewProvider {
    static var previews: some View {
        Text("Hello, World!")
    }
}
