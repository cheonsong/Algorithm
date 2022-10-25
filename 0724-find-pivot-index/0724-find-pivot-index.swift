class Solution {
    func pivotIndex(_ nums: [Int]) -> Int {
        var answer = -1
        let sum = nums.reduce(0, +)
        
        for i in 0..<nums.count {
            var left = i == 0 ? 0 : Array(nums[0..<i]).reduce(0, +)
            
            if left == sum-left-nums[i] {
                answer = i
                break
            }
        }
        
        return answer
    }
}