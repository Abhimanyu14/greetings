//
//  HeaderCircle.swift
//  Greetings
//
//  Created by Abhimanyu on 09/08/24.
//

import SwiftUI

struct HeaderCircle: View {
    @State var isRotated: Bool = false
    var body: some View {
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
    }
}
