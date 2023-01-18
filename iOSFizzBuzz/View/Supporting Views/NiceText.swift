
import SwiftUI

struct NiceText: View {
    let text: String
    var body: some View {
        Text(text)
            .font(.largeTitle)
            .fontWeight(.semibold)
            .padding()
    }
}

struct NiceText_Previews: PreviewProvider {
    static var previews: some View {
        NiceText(text: "Fizz")
    }
}
