class Solution {
    func isHappy(_ n: Int) -> Bool {
        var dict: [Int: Int] = [:]
        var number = n
        
        while true {
            if let _ = dict[number] {
                return false
            } else {
                var value = 0
                
                intToArray(number).forEach {
                    value += $0*$0
                }
                
                if value == 1 { return true }
                
                dict[number] = value
                number = value
            }
        }
    }
    
    func intToArray(_ n: Int)-> [Int] {
         return [Character](String(n))
            .map({ String($0) })
            .compactMap{ Int($0) }
    }
}