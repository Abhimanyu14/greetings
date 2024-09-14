//
//  Header.swift
//  Greetings
//
//  Created by Abhimanyu on 07/08/24.
//

import SwiftUI

struct Header: View {
    @State var isRotated: Bool = false

    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 0.0) {
                Text(LocalizedStringKey("header_title"))
                    .font(.largeTitle)
                    .fontWeight(.bold)
                Text(LocalizedStringKey("header_subtitle"))
                    .font(.headline)
                    .fontWeight(.light)
            }
            Spacer()
            Circle()
                .strokeBorder(
                    AngularGradient(
                        gradient: Gradient(
                            colors: [.pink, .purple, .blue, .orange, .yellow]
                        ),
                        center: .center,
                        angle: .zero
                    ),
                    lineWidth: 15
                )
                .rotationEffect(isRotated ? .zero : .degrees(360))
                .frame(
                    maxWidth: 70,
                    maxHeight: 70
                )
                .onTapGesture {
                    withAnimation(Animation.spring()) {
                        isRotated.toggle()
                    }
                }
        }.padding()
    }
}
