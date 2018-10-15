    /// When index is out of bounds, search continues at the beginning
    /// ```
    /// let i = [1,2,3,4]
    /// i[cycle: 0] // 1
    /// i[cycle: 4] // 1
    /// i[cycle: 42] // 3
    /// ```
    /// - parameter cycle: Index of the element
    /// - returns: nil if array is empty
    subscript (cycle cycle: Int) -> Element? {
        if self.count == 0 { return nil }
        
        let index = cycle % self.count
        
        return self[index]
    }
