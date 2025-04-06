import SwiftUI

struct CustomShadow: View {
    var shadow: CustomShadowConfigurable?
    var body: some View {
            RoundedRectangle(cornerRadius: shadow?.cornerRadius ?? 0)
                .stroke(shadow?.strokeColor ?? .clear, lineWidth: shadow?.lineWidth ?? 0)
                .fill(shadow?.fill ?? .clear)
                .shadow(
                    color: (shadow?.shadowColor1 ?? .clear).opacity(shadow?.opacity1 ?? 0),  //black 0.5
                    radius: shadow?.shadowRadius1 ?? 0,
                    x: shadow?.x1 ?? 0, //2
                    y: shadow?.y1 ?? 0   //2
                )
                .shadow(
                    color: (shadow?.shadowColor2 ?? .clear).opacity(shadow?.opacity2 ?? 0),   //gray 0.7
                    radius: shadow?.shadowRadius2 ?? 0,
                    x: shadow?.x2 ?? 0 , //-1
                    y: shadow?.y2 ?? 0 //-2
                )
    }
}
