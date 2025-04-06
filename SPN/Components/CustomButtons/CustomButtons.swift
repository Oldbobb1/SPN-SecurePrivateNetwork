import SwiftUI

struct CustomButtons: View {
    var action: () -> Void
    var imageParametr: ImageButtonConfigurable? = nil
    var textParametr: TextButtonConfigurable? = nil
    var spacingParamets: SpacingConfigurable? = nil
    var shadowStyle: CustomShadowConfigurable? = nil
    var body: some View {
            Button(action: action) {
                HStack {
                        ImageComponent(imageParametr: imageParametr)
                        TextComponent(textParametr: textParametr)
                }
                .frame(height: spacingParamets?.height, alignment: spacingParamets?.aligment ?? .center)
                .frame(maxWidth: spacingParamets?.maxWidth)
                .background(CustomShadow(shadow: shadowStyle))
            }
            .padding(spacingParamets?.padding ?? [])
            .padding(.top, spacingParamets?.top ?? 0)
            .padding(.bottom, spacingParamets?.bottom ?? 0)
            .padding(.leading, spacingParamets?.leading ?? 0)
            .padding(.trailing, spacingParamets?.trailing ?? 0)
            if spacingParamets?.spacer ?? false { Spacer() }
    }
}
