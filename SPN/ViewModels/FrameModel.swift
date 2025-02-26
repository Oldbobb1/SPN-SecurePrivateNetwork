import SwiftUI
import Combine

class FrameModel: ObservableObject {
    @Published var offset: CGFloat = UIScreen.main.bounds.height
}
