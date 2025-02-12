import SwiftUI

struct ConnectionStatusOptionView: View {
    let systemName: String
    let width: CGFloat
    let height: CGFloat
    let style: Color
    let title: String
    let titleStyle: Color
    let text: String
    let textStyle: Color
    
    var body: some View {
        HStack {
            Image(systemName: systemName)
                .resizable()
                .frame(
                    width: width,
                    height: height
                )
                .foregroundColor(style)
            Text(title)
                .bold()
                .font(.title)
                .foregroundStyle(titleStyle)
            Spacer()
            Text(text)
                .font(.title2)
                .foregroundStyle(textStyle)
                .padding(.trailing, 20)
        }
        .padding(.leading, 20)
        .frame(width: 360,height: 70)
//        .frame(maxWidth: .infinity)
        .background(
            RoundedRectangle(cornerRadius: 25)
                .fill(Color(UIColor.systemGray6))
                .stroke(Color.black, lineWidth: 2)
//                                    .fill(Color.blue)
                .shadow(
                    color: Color.black.opacity(0.5),
                    radius: 6, x: 2,
                    y: 2
                )
                .shadow(
                    color: Color(UIColor.systemGray3),
                    radius: 3, x: -1, y: -1)
        )
    }
}

#Preview() {
    ConnectionStatusOptionView(systemName: "globe", width: 30, height: 30, style: .red, title: "Status:", titleStyle: .primary, text: "Conected", textStyle: .primary)
}
