class Solution {
    func search(_ nums: [Int], _ target: Int) -> Int {        
        return !nums.contains(target) ? -1 : nums.firstIndex(of: target)!
    }
}