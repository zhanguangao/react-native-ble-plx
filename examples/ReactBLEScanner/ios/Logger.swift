import Foundation

@objc public protocol Logger {
    var level: LogLevel { get }
    var withPrefix: Bool { get }
    func log(message: String, level: LogLevel)
}
