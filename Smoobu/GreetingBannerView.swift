// GreetingBannerView.swift // Smoobu //

import SwiftUI

struct GreetingBannerView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: .semiMedium) {
            Text("greeting_banner_welcome_title")
                .font(.title2.bold())
            Text("greeting_banner_welcome_message")
                .font(.body)
                .foregroundStyle(.secondary)
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding(.all, .medium)
    }
}

#Preview {
    GreetingBannerView()
}
