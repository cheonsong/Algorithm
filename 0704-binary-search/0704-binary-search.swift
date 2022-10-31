class Solution {
    func search(_ nums: [Int], _ target: Int) -> Int {
        if !nums.contains(target) { return -1 }
        
        return nums.firstIndex(of: target)!
    }
}