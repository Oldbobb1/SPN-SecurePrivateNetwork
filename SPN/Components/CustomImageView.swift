import SwiftUI

struct CustomImageView: View {
    var imageParametr: ImageViewConfigurable? = nil
    var body: some View {
        VStack {
            if let nameImage = imageParametr?.nameImage {
                Image(nameImage)
                    .resizable()
                    .frame(width: imageParametr?.width, height: imageParametr?.height)
                    .clipShape(RoundedRectangle(cornerRadius: imageParametr?.cornerRadius ?? 0))
                    .frame(maxWidth: imageParametr?.maxWidth, alignment: imageParametr?.alignment ?? .center)
            }
            if let systemName = imageParametr?.systemName {
                Image(systemName: systemName)
                    .resizable()
                    .frame(width: imageParametr?.width ?? 30, height: imageParametr?.height ?? 30)
                    .foregroundColor(imageParametr?.foregroundColor)
            }
        }
    }
}


