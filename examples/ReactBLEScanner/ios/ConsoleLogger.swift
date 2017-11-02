import Foundation

public class ConsoleLogger: NSObject, Logger {
  public var level: LogLevel
  public var withPrefix = true
  
  public init(level: LogLevel) {
    self.level = level
  }
  
  public func log(message: String, level: LogLevel) {
    print(message)
  }
}
