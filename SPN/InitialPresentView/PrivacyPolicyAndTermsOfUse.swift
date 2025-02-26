import SwiftUI

//TermsAndPrivacy изменить
struct PrivacyPolicyAndTermsOfUse: View {
    @State private var show = false
    @State private var showElement = false
    @Binding var showPrivacyPolicy: Bool
    @State private var isLoad = false
    var body: some View {
        ZStack {
            RadialGradient(gradient: Gradient(colors: [.orange, .purple]), center: .center, startRadius: 100, endRadius: 450)
                .ignoresSafeArea()
            VStack {
                TypingTextView(text: "Welcome", showElement: $showElement)
                    .padding(.top, 150)
                Spacer()
                if showElement {
                    HStack {
                        Link("Privacy Policy", destination: URL(string: "https://yourwebsite.com/privacy-policy")!)
                        
                        Text("and")
                            .font(.system(size: 20))
                            .foregroundStyle(.white)
                        
                        Link("Terms of Use", destination: URL(string: "https://yourwebsite.com/terms-of-use")!)
                    }
                    .padding(.bottom, 20)
                    .foregroundStyle(.primary)
                    .font(.system(size: 20))
                    Toggle(isOn: $show) {
                        HStack {
                            Text("I agree")
                                .font(.system(size: 22))
                                .padding(.leading)
                        }
                        .frame(height: 50)
                        .font(.footnote)
                    }
                    .padding(.trailing)
                    .background(RoundedRectangle(cornerRadius: 25)
                        .fill(.clear)
                        .stroke(.black, lineWidth: 4)
                        .shadow(color: .black.opacity(0.5),
                                radius: 3,
                                x: 2,
                                y: 2
                               )
                            .shadow(color: .gray.opacity(0.7),
                                    radius: 3,
                                    x: -1,
                                    y: -2
                                   )

                    )
                    .onChange(of: show) { [show] in
                        if show {
                            withAnimation(.bouncy(duration: 3.5)) {
                                showPrivacyPolicy = false
                            }
                        }
                    }
                    Spacer()
                        .opacity(showElement ? 1 : 0)
                        .scaleEffect(showElement ? 1 : 0.5)
                        .animation(.easeIn(duration: 0.9), value: showElement)
                }
                    
            }
            .padding()
            
        }
    .animation(.easeInOut(duration: 0.9), value: showElement)
    }
}

#Preview {
    PrivacyPolicyAndTermsOfUse(showPrivacyPolicy: .constant(true))
}




