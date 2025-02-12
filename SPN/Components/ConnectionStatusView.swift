import SwiftUI

struct ConnectionStatusView: View {
    let systemName: String
    let width: CGFloat
    let height: CGFloat
    let style: Color
    let title: String
    let titleFont: Font
    let titleStyle: Color
    let text: String
    let textFont: Font
    let textStyle: Color
    let padding: Edge.Set
    
    var body: some View {
        HStack {
            Image(systemName: systemName)
                .resizable()
                .frame(width: width, height: height)
                .foregroundColor(style)
            Text(title)
                .bold()
                .font(titleFont)
                .foregroundStyle(titleStyle)
            Spacer()
            Text(text)
                .font(textFont)
                .foregroundStyle(textStyle)
                .padding(padding)
        }
    }
}
