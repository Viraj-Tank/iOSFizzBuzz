
import SwiftUI

struct AboutView: View {
    var body: some View {
        ZStack {
            BackgroundImageView().opacity(0.7)
            
            Text("""
            Fizz buzz is a group word game for children to teach them about division.[1] Players take turns to count incrementally, replacing any number divisible by three with the word "fizz", and any number divisible by five with the word "buzz".
                 
            Players generally sit in a circle. The player designated to go first says the number "1", and the players then count upwards in turn. However, any number divisible by three is replaced by the word fizz and any number divisible by five by the word buzz. Numbers divisible by both three and five (i.e. divisible by 15) become fizz buzz. A player who hesitates or makes a mistake is eliminated.
            """)
                .font(.title)
                .fontWeight(.semibold)
                .multilineTextAlignment(.leading)
                .minimumScaleFactor(0.1)
                .padding()
                .frame(
                    width: UIScreen.main.bounds.width,
                    height: UIScreen.main.bounds.height * 0.8
                )
                .padding()
        }
    }
}

struct AboutView_Previews: PreviewProvider {
    static var previews: some View {
        AboutView()
    }
}
