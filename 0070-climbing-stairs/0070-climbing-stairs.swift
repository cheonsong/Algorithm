class Solution {
    func climbStairs(_ n: Int) -> Int {
        var cache: [Int:Int] = [0: 1,
                                1: 1]
        
        if n > 1 {
            for i in 2...n {
                cache[i] = cache[i-1]! + cache[i-2]!
            }
        }
        
        return cache[n]!
    }
}