import SwiftUI

struct GreetingsText: View {
    let data: GreetingsTextData
    var body: some View {
        Text(data.text)
            .font(.largeTitle)
            .fontWeight(.semibold)
            .foregroundColor(Color.purple)
            .padding()
            .background(data.color)
            .cornerRadius( /*@START_MENU_TOKEN@*/20.0 /*@END_MENU_TOKEN@*/)
            .shadow(color: data.color, radius: 5, x: 10, y: 10)
    }
}