import Foundation

public enum SharedPreferences {
    @Preference<Int64>("selected_profile_id", defaultValue: -1) public static var selectedProfileID

    #if os(macOS)
        private static let disableMemoryLimitByDefault = true
    #else
        private static let disableMemoryLimitByDefault = false
    #endif
    @Preference<Bool>("disable_memory_limit", defaultValue: disableMemoryLimitByDefault) public static var disableMemoryLimit

    @Preference<Int>("max_log_lines", defaultValue: 300) public static var maxLogLines

    #if os(macOS)
        @Preference<Bool>("show_menu_bar_extra", defaultValue: true) public static var showMenuBarExtra
        @Preference<Bool>("started_by_user", defaultValue: false) public static var startedByUser
    #endif
}
