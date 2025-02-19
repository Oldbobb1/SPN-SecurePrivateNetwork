import SwiftUI

struct ButtonOpenConnectStatus: View {
    @Binding var statusConnect: Bool
    @Binding var showStatusConnect: Bool
    var body: some View {
        ButtonImageView(action: {
            openStatus()
        },
                        systemName: "info.circle.fill",
                        style: .yellow ,
                        fillColor: Color(UIColor.systemGray6)
        )
    }
    func openStatus() {
        let action = Actions(isStatusActive: $statusConnect, isStatusVisible: $showStatusConnect)
        action.action()
    }
}

