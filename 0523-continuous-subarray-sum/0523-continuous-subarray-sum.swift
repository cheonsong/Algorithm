class Solution {
    var cache: [Int: Int] = [0:-1]
    
    func checkSubarraySum(_ nums: [Int], _ k: Int) -> Bool {
        
        var sum = 0
        
        for i in 0..<nums.count {
            sum += nums[i]
            let remain = sum % k
            
            if let index = cache[remain] {
                if i - index > 1 {
                    return true
                }
            } else {
                cache[remain] = i
            }
            
        }
        
        return false
    }
}