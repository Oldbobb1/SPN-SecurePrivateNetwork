import SwiftUI

struct ButtonCloseSignInView: View {
    @Binding var offset: CGFloat
    @Binding var signIn: Bool
    
    var body: some View {
        HStack {
            Button(action:{
                closeView()
            }) {
                Image(systemName: "x.circle")
                    .resizable()
                    .frame(width: 30, height: 30)
                    .padding(.top, 20)
                    .foregroundStyle(.black)
            }
            .padding(.leading, 20)
            Spacer()
        }
    }
    private func closeView() {
        withAnimation {
            offset = UIScreen.main.bounds.height
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.4) {
                signIn = false
            }
        }
    }
}


