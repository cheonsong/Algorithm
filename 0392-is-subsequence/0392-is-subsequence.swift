class Solution {
    func isSubsequence(_ s: String, _ t: String) -> Bool {
        
        var tArray = Array(t)
        var iterator = tArray.makeIterator()
        
        for c in s {
            while true {
                guard let character = iterator.next() else { return false }
                if c == character { break }
            }
        }
        
        return true
    }
}