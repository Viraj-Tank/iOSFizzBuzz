
import SwiftUI

struct BackgroundImageView: View {
    var body: some View {
        AsyncImage(
            url: URL(string: getImage()),
            transaction: Transaction(animation: .default)
        ) { phase in
            switch phase {
                
            case .success(let image):
                image
                    .resizable()
                    .scaledToFill()
                    .blur(radius: 0.3)
                
            default:
                Color
                    .clear
                    .opacity(0.3)
                    .ignoresSafeArea()
            }
        }.ignoresSafeArea()
    }
    
    func getImage() -> String {
        let listOfImages = [
//               "https://images.unsplash.com/photo-1580820267682-426da823b514?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8cG9ydHJhaXQlMjBiYWNrZ3JvdW5kfGVufDB8fDB8fA%3D%3D&w=1000&q=80",
               "https://c4.wallpaperflare.com/wallpaper/847/397/235/blurred-colorful-vertical-portrait-display-wallpaper-preview.jpg"
//               "https://miro.medium.com/proxy/1*lPfdDAivK_QNzqknqLCP8w.png"
        ]
        return listOfImages.randomElement() ?? ""
    }
}

struct BackgroundImageView_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundImageView()
    }
}
