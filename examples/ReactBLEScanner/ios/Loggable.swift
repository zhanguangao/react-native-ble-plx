import Foundation

protocol Loggable: class {
    func log(_ level: LogLevel, message: String)
}

extension Loggable {
    func log(_ level: LogLevel, message: String) {
        
        for hashableLogger in LoggersManager.loggers {
            let logger = hashableLogger.object
        
            guard level.rawValue <= logger.level.rawValue else { return }
            
            var message = message
            if logger.withPrefix {
                let prefix = self.prefix(with: level)
                message = prefix + message
            }
            
            logger.log(message: message, level: level)
        }
    }
    
    private func prefix(with level: LogLevel) -> String {
        var prefix: String = "Logger|"
        
        prefix.append(level.description.uppercased() + "|")
        prefix.append(Date().iso8601(with: TimeZone.current) + "|")
        prefix.append(String(describing: self) + "|")
        
        return prefix
    }
}
