class Solution {
    func runningSum(_ nums: [Int]) -> [Int] {
        var result: [Int] = []
        var array = nums
        
        for _ in (0..<array.count) {
            result.append(array.reduce(0, +))
            array.removeLast()
        }

        return result.reversed()
    }
}