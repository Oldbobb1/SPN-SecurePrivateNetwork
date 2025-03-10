import SwiftUI

struct CustomImageView: View {
    var imageParametr: ImageViewConfigurable? = nil
    var body: some View {
        VStack {
            NameImageComponent(imageParametr: imageParametr)
            SystemNameComponent(imageParametr: imageParametr)
        }
    }
}
