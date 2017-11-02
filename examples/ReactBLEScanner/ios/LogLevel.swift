import Foundation

@objc public enum LogLevel: Int {
    case error = 0
    case warning = 1
    case info = 2
}

extension LogLevel: CustomStringConvertible {
    public var description: String {
        switch self {
        case .error: return("error")
        case .warning: return("warning")
        case .info: return("info")
        }
    }
}

