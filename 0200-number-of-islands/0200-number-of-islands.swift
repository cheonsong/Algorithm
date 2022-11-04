class Solution {
    
    func numIslands(_ grid: [[Character]]) -> Int {
        var count = 0
        
        var visited = Array(repeating: Array(repeating: false, count: grid[0].count), count: grid.count)
        
        for i in (0..<grid.count) {
            for j in (0..<grid[0].count) {
                if visited[i][j] {
                    continue
                }
                
                if grid[i][j] == "1" {
                    count += 1
                    search(grid, &visited, i, j)
                }
                
                // 0일경우
                visited[i][j] = true
            }
        }
        
        return count
    }
    
    func search(_ grid: [[Character]], _ visited: inout [[Bool]], _ row: Int, _ col: Int) {

        if row < 0 || row >= grid.count || col < 0 || col >= grid[0].count || visited[row][col] || grid[row][col] == "0" {
            return
        }
        
        visited[row][col] = true
        
        search(grid, &visited, row-1, col)
        search(grid, &visited, row+1, col)
        search(grid, &visited, row, col-1)
        search(grid, &visited, row, col+1)
    }
}