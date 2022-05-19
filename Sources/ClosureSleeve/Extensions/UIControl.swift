import UIKit

extension UIControl {
    
    /// Add closure to UIControl
    ///
    /// - Parameters:
    ///   - controlEvents: UIControl.Event  (trigger for closure execution)
    ///   - execute: closure.
    public func add(for controlEvents: UIControl.Event, _ execute: @escaping () -> (Void)) {
        
        self.addTarget(ClosureSleeve(for: self, execute), action: #selector(ClosureSleeve.invoke), for: controlEvents)
    }
    
}
