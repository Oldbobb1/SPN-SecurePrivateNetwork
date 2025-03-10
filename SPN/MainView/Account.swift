import SwiftUI

struct Account: View {
    @StateObject private var saveModel = UserSettings()
    @StateObject private var frame = FrameModel()
    var body: some View {
        GeometryReader { geometry in
            Text("Hello")
//            VStack {
//                Spacer()
//                VStack {
//                    HStack {
//                        VStack {
//                            Text(saveModel.name)
//                                .font(.system(size: 25))
//                                .padding(.leading)
//                                .frame(maxWidth: .infinity, alignment: .leading)
//                        }
//                        .frame(width: 150, height: 150)
//                        .background(RoundedRectangle(cornerRadius: 25)
//                            .fill(.clear)
//                            .stroke(.blue, lineWidth: 5)
//                            .shadow(color: .black.opacity(0.5), radius: 1, x: 2, y: 2)
//                            .shadow(color: .gray.opacity(0.7), radius: 2, x: -1, y: -2)
//                        )
//                        .lineLimit(0)
//                        .padding(.bottom)
//                        .padding(.top, 20)
//                        .padding(.leading, 20)
//                        Spacer()
//                        VStack {
//                            Text(saveModel.email)
//                                .font(.system(size: 16))
//                                .padding(.leading)
//                                .frame(maxWidth: .infinity, alignment: .leading)
//                        }
//                        .frame(width: 150, height: 150)
//                        .background(RoundedRectangle(cornerRadius: 25)
//                            .fill(.clear)
//                            .stroke(.blue, lineWidth: 6)
//                            .shadow(color: .black.opacity(0.5), radius: 1, x: 2, y: 2)
//                        )
//                        .padding(.bottom)
//                        .padding(.top, 20)
//                        .padding(.trailing, 20)
//                    }
//                    //                VStack {
//                    //                    Text("Подписка: не активна ")
//                    //                    //                        .padding(.top, 50)
//                    //                        .padding(.leading)
//                    //                        .frame(maxWidth: .infinity, alignment: .center)
//                    //                }
//                    //                .frame(width: 380, height: 50)
//                    //                .background(RoundedRectangle(cornerRadius: 25)
//                    //                    .fill(.clear)
//                    //                    .stroke(.blue, lineWidth: 4)
//                    //                )
//                    Spacer()
//                    //                                Button(action:{
//                    //
//                    //                                }) {
//                    //                                    Text("политика конфиг и использ")
//                    //                                        .font(.system(size: 15))
//                    //                                }
//                    //                                .padding(.bottom)
//                    //                                .padding(.leading)
//                    CustomButtons(
//                        action: deleteAccount,
//                        textParametr: TextButtonConfiguration(
//                            text: "Delete Account",
//                            font: .headline,
//                            textForegroundStyle: .primary,
//                            textHeight: 50,
//                            maxWidth: .infinity
//                        ), spacingParamets: SpacingConfiguration(padding: .horizontal, bottom: 20)
//                    )
//                } //основной
////                .padding()
//                .frame(maxWidth: geometry.size.width * 0.95, maxHeight: geometry.size.height * 0.5)
//                .background(RoundedRectangle(cornerRadius: 25)
//                    .fill(Color(UIColor.systemGray5))
//                    .stroke(.black, lineWidth: 4)
//                    .shadow(color: .black.opacity(0.5), radius: 1, x: 2, y: 2)
//                    .shadow(color: .gray.opacity(0.7), radius: 2, x: -1, y: -2)
//                )
//                .offset(y: frame.offset)
//                .onAppear {
//                    withAnimation {
//                        frame.offset = 0
//                    }
//                }
//            }
            .padding(.horizontal)
        }
    }
    private func deleteAccount() {
        saveModel.name = ""
        saveModel.email = ""
        saveModel.password = ""
        saveModel.isRegistr = false
    }
}

#Preview {
    Account()
}
