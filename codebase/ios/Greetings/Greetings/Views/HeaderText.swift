//
//  HeaderText.swift
//  Greetings
//
//  Created by Abhimanyu on 09/08/24.
//

import SwiftUI

struct HeaderText: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 0.0) {
            Text(LocalizedStringKey("header_title"))
                .font(.largeTitle)
                .fontWeight(.bold)
            Text(LocalizedStringKey("header_subtitle"))
                .font(.headline)
                .fontWeight(.light)
        }
    }
}
