class Solution {
    func longestPalindrome(_ s: String) -> Int {
        var dict: [Character: Int] = [:]
        s.forEach {
            if let value = dict[$0] {
                dict[$0] = value + 1
            } else {
                dict[$0] = 1
            }
        }
        
        var answer = 0
        var hasOdd = false
        
        dict.forEach {
            if $0.value % 2 == 0 {
                answer += $0.value
            } else {
                answer += $0.value - 1
                if !hasOdd {
                    hasOdd = true
                }
            }
        }
        
        return hasOdd ? answer + 1 : answer
    }
}