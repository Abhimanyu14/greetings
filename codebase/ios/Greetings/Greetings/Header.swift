import SwiftUI

struct Header: View {
    let messages = [
        GreetingsTextData(
            text: "Hello!",
            color: Color.orange.opacity(0.4)
        ),
        GreetingsTextData(
            text: "Konnichiwa!",
            color: Color.green.opacity(0.4)
        ),
        GreetingsTextData(
            text: "Hola!",
            color: Color.blue.opacity(0.4)
        ),
        GreetingsTextData(
            text: "Namaste!",
            color: Color.red.opacity(0.4)
        ),
    ]
    var body: some View {
        ForEach(
            messages,
            content: { data in
                GreetingsText(
                    text: data.text,
                    color: data.color
                )
            }
        )
    }
}