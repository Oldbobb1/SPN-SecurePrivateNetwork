import SwiftUI


struct LaunchScreenView: View {
    var body: some View {
        VStack {
            Image("LaunchImage")
                .resizable()
                .frame(width: 250, height: 250)
                .clipShape(RoundedRectangle(cornerRadius: 250))
                .frame(maxWidth: .infinity,alignment: .center)
            Text("Secure Private Network")
                .padding()
                .font(.largeTitle)
                .frame(maxWidth: .infinity, alignment: .center)
                .foregroundStyle(.white)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.black)
//        .ignoresSafeArea(.all)
    }
}

#Preview {
    LaunchScreenView()
}
