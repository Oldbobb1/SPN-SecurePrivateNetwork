import SwiftUI

protocol TextButtonConfigurable {
    var text: String? { get }
    var font: Font? { get }
    var textForegroundStyle: Color? { get }
}
