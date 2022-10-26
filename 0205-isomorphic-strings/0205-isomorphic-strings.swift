class Solution {
    
    var sCache: [Character: Int] = [:]
    var tCache: [Character: Int] = [:]
    
    func isIsomorphic(_ s: String, _ t: String) -> Bool {
        
        var sIdx = 0
        var tIdx = 0
        for c in s {
            if let _ = sCache[c] {
                sIdx += 1
                continue
            } else {
                sCache[c] = sIdx
                sIdx += 1
            }
        }
        
        for c in t {
            if let _ = tCache[c] {
                tIdx += 1
                continue
            } else {
                tCache[c] = tIdx
                tIdx += 1
            }
        }
        
        var sResult: [String] = []
        var tResult: [String] = []
        s.forEach { sResult.append(String(sCache[$0]!)) }
        t.forEach { tResult.append(String(tCache[$0]!)) }
        
        return sResult == tResult
    }
}