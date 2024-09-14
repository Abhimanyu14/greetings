//
//  ContentView.swift
//  Greetings
//
//  Created by Abhimanyu on 03/08/24.
//

import SwiftUI

struct AppUI: View {
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    @Environment(\.verticalSizeClass) var verticalSizeClass

    @Binding var language: String
    @Binding var layoutDirectionString: String

    var body: some View {
        if horizontalSizeClass == .compact && verticalSizeClass == .regular {
            // Protrait
            NavigationStack {
                AppUIPortrait()
                    .toolbar {
                        ToolbarItem(placement: .topBarTrailing) {
                            LanguageOptions(
                                language: $language,
                                layoutDirectionString: $layoutDirectionString
                            )
                        }
                    }
            }
        } else {
            // Landscape
            NavigationStack {
                AppUILandscape()
                    .toolbar {
                        ToolbarItem(placement: .topBarTrailing) {
                            LanguageOptions(
                                language: $language,
                                layoutDirectionString: $layoutDirectionString
                            )
                        }
                    }
            }
        }
    }
}

struct AppUIPortrait: View {
    var body: some View {
        ZStack(alignment: .topLeading) {
            Background()
            VStack(alignment: .leading) {
                HeaderPortrait()
                Spacer()
                Messages()
                Spacer()
            }
            .padding()
        }
    }
}

struct AppUILandscape: View {
    var body: some View {
        ZStack(alignment: .topLeading) {
            Background()
            HStack(alignment: .top) {
                HeaderLandscape()
                Messages()
            }
            .padding()
        }
    }
}

#Preview {
    AppUI(
        language: .constant("en"),
        layoutDirectionString: .constant(LEFT_TO_RIGHT)
    )
}
