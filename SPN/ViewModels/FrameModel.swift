import Combine
import SwiftUI

class FrameModel: ObservableObject {
    @Published var offset: CGFloat = UIScreen.main.bounds.height
}
