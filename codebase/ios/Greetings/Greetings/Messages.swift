import SwiftUI

struct Messages: View {
    let messages = [
        GreetingsTextData(
            text: "Greetings 1!",
            color: Color.orange.opacity(0.4)
        ),
        GreetingsTextData(
            text: "Greetings 2!",
            color: Color.orange.opacity(0.4)
        ),
        GreetingsTextData(
            text: "Greetings 3!",
            color: Color.orange.opacity(0.4)
        ),
        GreetingsTextData(
            text: "Greetings 4!",
            color: Color.orange.opacity(0.4)
        ),
    ]
    var body: some View {
        ForEach(
            messages,
            content: { data in
                GreetingsText(
                    data: data
                )
            }
        )
    }
}