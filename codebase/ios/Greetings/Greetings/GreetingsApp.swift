//
//  GreetingsApp.swift
//  Greetings
//
//  Created by Abhimanyu on 03/08/24.
//

import SwiftUI

let LEFT_TO_RIGHT = "leftToRight"
let RIGHT_TO_LEFT = "rightToLeft"

@main
struct GreetingsApp: App {
    @AppStorage("language") var language: String = "en"
    @AppStorage("layoutDirection") var layoutDirectionString: String =
        LEFT_TO_RIGHT
    var layoutDirection: LayoutDirection {
        layoutDirectionString == LEFT_TO_RIGHT ? LayoutDirection.leftToRight : LayoutDirection.rightToLeft
    }

    var body: some Scene {
        WindowGroup {
            AppUI(
                language: $language,
                layoutDirectionString: $layoutDirectionString
            )
            .environment(\.locale, Locale(identifier: language))
            .environment(\.layoutDirection, layoutDirection)
        }
    }
}
