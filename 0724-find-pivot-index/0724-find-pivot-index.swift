class Solution {
    func pivotIndex(_ nums: [Int]) -> Int {
        var answer = -1
        
        for i in 0..<nums.count {
            var left = i == 0 ? 0 : Array(nums[0..<i]).reduce(0, +)
            var right = Array(nums[i+1..<nums.count]).reduce(0, +)
            if left == right {
                answer = i
                break
            }
        }
        
        return answer
    }
}