import SwiftUI

struct ButtonSubscribe: View {
    var body: some View {
        VStack {
            CustomButtons(
                action: {},
                imageParametr: ImageButtonConfiguration(
                    systemName: "dollarsign.circle.fill",
                    width: 50,
                    height: 50,
                    //                    imageForegroundStyle: .mint,
                    //                    padding: .all
                ),
                shadowStyle: CustomShadowConficuration(
                    cornerRadius: 25,
                    strokeColor: .black,
                    lineWidth: 6,
                    shadowColor1: .black,
                    opacity1: 0.5,
                    shadowRadius1: 1,
                    x1: 2,
                    y1: 2,
                    shadowColor2: .gray,
                    opacity2: 0.7,
                    shadowRadius2: 2,
                    x2: -1,
                    y2: -2
                )
            )
        }
        .padding(.bottom)
    }
}

#Preview {
    ButtonSubscribe()
}
