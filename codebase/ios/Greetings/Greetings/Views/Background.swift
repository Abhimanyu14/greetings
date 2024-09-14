//
//  Background.swift
//  Greetings
//
//  Created by Abhimanyu on 07/08/24.
//

import SwiftUI

/// Background View for the app
struct Background: View {
    var body: some View {
        LinearGradient(
            colors: [
                Color("BackgroundStartColor"),
                Color("BackgroundEndColor"),
            ],
            startPoint: .topLeading,
            endPoint: .bottomTrailing
        )
        .opacity(0.2)
        .ignoresSafeArea()
    }
}
