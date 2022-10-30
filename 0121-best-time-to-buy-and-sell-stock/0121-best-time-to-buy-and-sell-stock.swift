class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        var buy = prices[0]
        var answer = 0
        
        for price in prices {
            let current = price - buy
            answer = max(answer, current)
            if current < 0 {
                buy = price
            }
        }
        
        
        return answer
    }
}