import Foundation

public extension Date {
  
  func iso8601(with timeZone: TimeZone) -> String {
    return Formatter.iso8601(with: timeZone).string(from: self)
  }
}

fileprivate extension Formatter {
  
  static func iso8601(with timeZone: TimeZone) -> DateFormatter {
    let formatter = DateFormatter()
    formatter.calendar = Calendar(identifier: .iso8601)
    formatter.locale = Locale(identifier: "en_US_POSIX")
    formatter.timeZone = timeZone
    formatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss.SSSZ"
    return formatter
  }
}
