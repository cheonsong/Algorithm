enum Direction {
    case down
    case up
    case left
    case right
}

class Solution {
    func spiralOrder(_ matrix: [[Int]]) -> [Int] {
        var answer: [Int] = []
        var matrix = matrix
        move(&matrix, &answer, 0, 0, .right)
        
        return answer
    }
    
    func move(_ matrix: inout [[Int]], _ answer: inout [Int] ,_ row: Int, _ col: Int,_ nextDirection: Direction) {
        
        if answer.count == matrix[0].count * matrix.count { return }
        
        answer.append(matrix[row][col])
        matrix[row][col] = -101

        switch nextDirection {
        case .down:
            if row+1 < matrix.count {
                if matrix[row+1][col] > -100 {
                    move(&matrix, &answer, row+1, col, .down)
                } else {
                    move(&matrix, &answer, row, col-1, .left)
                }
            } else {
                move(&matrix, &answer, row, col-1, .left)
            }
            
        case .left:
            if col-1 >= 0 {
                if matrix[row][col-1] > -100 {
                    move(&matrix, &answer, row, col-1, .left)
                } else {
                    move(&matrix, &answer, row-1, col, .up)
                }
            } else {
                move(&matrix, &answer, row-1, col, .up)
            }
            
        case .right:
            if col+1 < matrix[0].count {
                if matrix[row][col+1] > -100 {
                    move(&matrix, &answer, row, col+1, .right)
                } else {
                    move(&matrix, &answer, row+1, col, .down)
                }
            } else {
                move(&matrix, &answer, row+1, col, .down)
            }
            
        case .up:
            if row-1 >= 0 {
                if matrix[row-1][col] > -100 {
                    move(&matrix, &answer, row-1, col, .up)
                } else {
                    move(&matrix, &answer, row, col+1, .right)
                }
            } else {
                move(&matrix, &answer, row, col+1, .right)
            }
        }
    }
}