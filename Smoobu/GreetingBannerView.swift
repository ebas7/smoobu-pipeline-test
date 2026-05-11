// GreetingBannerView.swift // Smoobu //

import SwiftUI

struct GreetingBannerView: View {
    let userName: String

    private enum BannerSpacing {
        static let extraSmall: CGFloat = 4
        static let small: CGFloat = 8
        static let semiMedium: CGFloat = 12
        static let medium: CGFloat = 16
        static let large: CGFloat = 24
        static let extraLarge: CGFloat = 32
    }

    var body: some View {
        Text(LocalizedStringKey("greeting_banner_welcome \(userName)"))
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.horizontal, BannerSpacing.medium)
            .padding(.vertical, BannerSpacing.small)
    }
}

#Preview {
    GreetingBannerView(userName: "Alex")
}
