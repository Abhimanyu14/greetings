//
//  LanguageOptions.swift
//  Greetings
//
//  Created by Abhimanyu on 09/08/24.
//

import SwiftUI

struct LanguageOptions: View {
    @Binding var language: String
    @Binding var layoutDirectionString: String

    var body: some View {
        Image(systemName: "gearshape.fill")
            .contextMenu {
                Button(
                    action: {
                        print("Selected English")
                        language = "en"
                        layoutDirectionString = LEFT_TO_RIGHT
                    },
                    label: {
                        Text("English")
                    }
                )
                Button(
                    action: {
                        print("Selected Spanish")
                        language = "es"
                        layoutDirectionString = RIGHT_TO_LEFT
                    },
                    label: {
                        Text("Spanish")
                    }
                )
//                Button(
//                    action: {
//                        language = "en"
//                        layoutDirectionString = RIGHT_TO_LEFT
//                    },
//                    label: {
//                        Text("Hebrew")
//                    }
//                )
            }
    }
}

#Preview {
    LanguageOptions(
        language: .constant("en"),
        layoutDirectionString: .constant(LEFT_TO_RIGHT)
    )
}
