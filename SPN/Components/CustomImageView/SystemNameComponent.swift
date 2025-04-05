import SwiftUI

struct SystemNameComponent: View {
    var imageParametr: ImageViewConfigurable?
    var body: some View {
        if let systemName = imageParametr?.systemName {
            Image(systemName: systemName)
                .resizable()
                .frame(
                    width: imageParametr?.width ?? 30,
                    height: imageParametr?.height ?? 30
                )
                .foregroundColor(imageParametr?.foregroundColor)
        }
    }
}
