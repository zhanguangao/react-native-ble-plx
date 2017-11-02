import Foundation

public typealias HashableLogger = HashableWrapper<Logger>

public class LoggersManager: NSObject {
    public static var loggers = Set<HashableLogger>()
  
    public func add(logger: Logger) {
        let hashableLogger = HashableWrapper(logger)
        LoggersManager.loggers.insert(hashableLogger)
    }

    public func remove(logger: Logger) {
        let hashableLogger = HashableWrapper(logger)
        LoggersManager.loggers.remove(hashableLogger)
    }
}
