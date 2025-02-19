import SwiftUI

struct ButtonOpenRegions: View {
    @Binding var regions: Bool
    @Binding var showRegions: Bool
    var body: some View {
        ButtonImageView(action: {
            openRegion()
        },
                        systemName: "globe",
                        style: .blue,
                        fillColor: Color(UIColor.systemGray6)
        )
    }
    func openRegion() {
        let action = Actions(isStatusActive: $regions, isStatusVisible: $showRegions)
        action.action()
    }
}

