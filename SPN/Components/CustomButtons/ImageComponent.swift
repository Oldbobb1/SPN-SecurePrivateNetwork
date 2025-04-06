import SwiftUI

struct ImageComponent: View {
    var imageParametr: ImageButtonConfigurable?
    var body: some View {
        if let systemName = imageParametr?.systemName {
                Image(systemName: systemName)
                    .resizable()
                    .frame(width: imageParametr?.width ?? 30, height: imageParametr?.height ?? 30)
                    .foregroundStyle(imageParametr?.imageForegroundStyle ?? .primary)
                    .padding(imageParametr?.padding ?? [])
        }
    }
}
