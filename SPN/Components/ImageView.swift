import SwiftUI

struct ImageView: View {
    let nameImage: String
    let width: CGFloat
    let height: CGFloat
    let cornerRadius: CGFloat?
    let maxWidth: CGFloat?
    let alignment: Alignment
    
    var body: some View {
        VStack {
            Image(nameImage)
                .resizable()
                .frame(
                    width: width,
                    height: height
                )
                .clipShape(RoundedRectangle(cornerRadius: cornerRadius ?? 0))
                .frame(
                    maxWidth: maxWidth,
                    alignment: alignment
                )
        }
    }
}



