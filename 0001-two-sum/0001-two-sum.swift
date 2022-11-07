class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var dict: [Int: Int] = [:]
        var answer: [Int] = []
        
        nums.enumerated().forEach { idx, num in
            if let value = dict[target - num] {
                answer = [idx, value]
                return
            } else {
                dict[num] = idx
            }
        }

        return answer
    }
}