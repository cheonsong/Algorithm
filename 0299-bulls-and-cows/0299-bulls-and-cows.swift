class Solution {
    func getHint(_ secret: String, _ guess: String) -> String {
        var A = 0
        var B = 0
        
        var s = [Character](secret)
        var g = [Character](guess)
        var dictS: [Character: Int] = [:]
        var dictG: [Character: Int] = [:]
        
        if secret == guess { return "\(secret.count)A0B" }
        
        s.enumerated().forEach { idx, value in
            if g[idx] == value {
                A += 1
            } else {
                let sValue = dictS[value] ?? 0
                dictS[value] = sValue + 1
                
                let gValue = dictG[g[idx]] ?? 0
                dictG[g[idx]] = gValue + 1
            }
        }
        
        dictS.forEach {
            if let guess = dictG[$0.key] {
                B += min($0.value, guess)
            }
        }
        
        return "\(A)A\(B)B"
    }
}