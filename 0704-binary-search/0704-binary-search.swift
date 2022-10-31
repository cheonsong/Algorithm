class Solution {
    func search(_ nums: [Int], _ target: Int) -> Int {
        if !nums.contains(target) { return -1 }
        if nums.first == target { return 0 }
        if nums.last == target { return nums.count - 1 }
        
        return nums.firstIndex(of: target)!
    }
}