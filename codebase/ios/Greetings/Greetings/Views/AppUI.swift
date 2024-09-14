//
//  ContentView.swift
//  Greetings
//
//  Created by Abhimanyu on 03/08/24.
//

import SwiftUI

struct AppUI: View {
    var body: some View {
        ZStack(alignment: .topLeading) {
            Background()
            VStack(alignment: .leading) {
                Header()
                Spacer()
                Messages()
                Spacer()
            }
            .padding()
        }
    }
}

#Preview {
    AppUI()
}
