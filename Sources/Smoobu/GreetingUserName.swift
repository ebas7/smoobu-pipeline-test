// GreetingUserName.swift
// Smoobu

enum GreetingUserName {
    static func normalizedDisplayName(for rawValue: String) -> String {
        rawValue.trimmingCharacters(in: .whitespacesAndNewlines)
    }
}
