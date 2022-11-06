class Solution {
    func minCostClimbingStairs(_ cost: [Int]) -> Int {
        var mc = Array(repeating: 0, count: cost.count + 1)//new int[cost.length + 1];
        mc[0] = cost[0];
        mc[1] = cost[1];
        
        for i in 2..<cost.count+1{
            let costV = i==cost.count ? 0 : cost[i]
            mc[i] = min(mc[i-1] + costV, mc[i-2] + costV);
        }
        return mc[cost.count];
    }
}