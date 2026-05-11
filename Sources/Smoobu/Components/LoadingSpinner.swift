// LoadingSpinner.swift // Smoobu //

import SwiftUI

@available(iOS 17.0, macOS 14.0, *)
public struct LoadingSpinner: View {
    private enum LayoutSpacing {
        static let extraSmall: CGFloat = 4
        static let small: CGFloat = 8
        static let semiMedium: CGFloat = 12
        static let medium: CGFloat = 16
        static let large: CGFloat = 24
        static let extraLarge: CGFloat = 32
    }

    private let message: LocalizedStringKey

    public init(message: LocalizedStringKey? = nil) {
        self.message = message ?? "Loading"
    }

    public var body: some View {
        VStack(spacing: LayoutSpacing.small) {
            ProgressView()
            Text(message)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}
