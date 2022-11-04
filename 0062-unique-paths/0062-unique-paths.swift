class Solution {
    var count = 0
    
    func uniquePaths(_ m: Int, _ n: Int) -> Int {
        var matrix = Array(repeating: Array(repeating: 1, count: n), count: m)
        
        dfs(&matrix)
        
        return matrix.last!.last!
    }
    
    func dfs(_ matrix: inout [[Int]]) {
        for i in 1..<matrix.count {
            for j in 1..<matrix[0].count {
                matrix[i][j] = matrix[i-1][j] + matrix[i][j-1]
            }
        }
    }
}