//
//  Header.swift
//  Greetings
//
//  Created by Abhimanyu on 07/08/24.
//

import SwiftUI

struct HeaderPortrait: View {
    var body: some View {
        HStack {
            HeaderText()
            Spacer()
            HeaderCircle()
        }.padding()
    }
}

struct HeaderLandscape: View {
    var body: some View {
        VStack {
            HeaderText()
            HeaderCircle()
        }.padding()
    }
}
