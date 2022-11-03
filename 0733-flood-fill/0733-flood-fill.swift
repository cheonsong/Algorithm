class Solution {
    func floodFill(_ image: [[Int]], _ sr: Int, _ sc: Int, _ color: Int) -> [[Int]] {
        if image[sr][sc] == color { return image }
        
        var graph = image
        search(&graph, sr, sc, image[sr][sc], color)
        
        return graph
    }
    
    func search(_ image: inout [[Int]], _ row: Int, _ col: Int, _ target: Int, _ color: Int) {
        if row < 0 || row >= image.count || col < 0 || col >= image[0].count || image[row][col] != target {
            return
        }
        image[row][col] = color
        search(&image, row-1, col, target, color)
        search(&image, row+1, col, target, color)
        search(&image, row, col-1, target, color)
        search(&image, row, col+1, target, color)
    }
}