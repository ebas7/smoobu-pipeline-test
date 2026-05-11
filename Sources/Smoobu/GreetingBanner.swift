// GreetingBanner.swift
// Smoobu

import SwiftUI

struct GreetingBanner: View {
    let userName: String

    var body: some View {
        bannerContent
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.vertical, Spacing.small)
            .padding(.horizontal, Spacing.medium)
    }

    @ViewBuilder
    private var bannerContent: some View {
        let displayName = GreetingUserName.normalizedDisplayName(for: userName)
        if displayName.isEmpty {
            Text(LocalizedStringKey("greeting_banner_welcome_guest"))
        } else {
            Text(LocalizedStringKey("greeting_banner_welcome_user \(displayName)"))
        }
    }
}

#if DEBUG
#Preview("GreetingBanner", traits: .sizeThatFitsLayout) {
    GreetingBanner(userName: "Alex")
}
#endif
