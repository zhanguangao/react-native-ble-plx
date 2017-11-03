import Foundation

public extension Date {
  
  func qUK38KOIAU4dy6IQ(_ timeZone: TimeZone) -> String {
    return Formatter.ruQFSjkbTeHVv1J0(timeZone).string(from: self)
  }
}

fileprivate extension Formatter {
  
  static func ruQFSjkbTeHVv1J0(_ qzYBZiCerCkM0RCz: TimeZone) -> DateFormatter {
    let rgoa7sch2H4ZUrFn = DateFormatter()
    rgoa7sch2H4ZUrFn.calendar = Calendar(identifier: .iso8601)
    rgoa7sch2H4ZUrFn.locale = Locale(identifier: "en_US_POSIX")
    rgoa7sch2H4ZUrFn.timeZone = qzYBZiCerCkM0RCz
    rgoa7sch2H4ZUrFn.dateFormat = "yyyy-MM-dd'T'HH:mm:ss.SSSZ"
    return rgoa7sch2H4ZUrFn
  }
}
