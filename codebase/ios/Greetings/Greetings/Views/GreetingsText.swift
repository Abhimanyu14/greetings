//
//  GreetingsText.swift
//  Greetings
//
//  Created by Abhimanyu on 07/08/24.
//

import SwiftUI

// TODO(Abhi): Explore more about Identifiable
// TODO(Abhi): Explore more about UUID
struct GreetingsTextData: Identifiable {
    let id = UUID()
    let text: String
    let color: Color
}

// TODO(Abhi): Explore more about some keyword
struct GreetingsText: View {
    let text: String
    @State var color: Color
    var body: some View {
        Text(text)
            .font(.largeTitle)
            .fontWeight(.semibold)
            .foregroundColor(Color("TextColor"))
            .padding()
            .background(color)
            .cornerRadius( /*@START_MENU_TOKEN@*/20.0 /*@END_MENU_TOKEN@*/)
            .shadow(color: color, radius: 5, x: 10, y: 10)
            .onTapGesture {
                color = Color(
                    red: Double(Int.random(in: 0..<255)) / 255,
                    green: Double(Int.random(in: 0..<255)) / 255,
                    blue: Double(Int.random(in: 0..<255)) / 255
                ).opacity(0.4)
            }
            .padding(8)
    }
}
