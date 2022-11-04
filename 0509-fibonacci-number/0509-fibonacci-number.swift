class Matrix {
    var matrix = [[1,1],
                  [1,0]]
    
    func pow(_ a: Matrix, _ n: Int)-> Matrix {
        var mat = a
        
        if n > 1 {
            mat = pow(mat, n/2)
            mat = multi(mat, mat)
            
            if n%2 == 1 {
                let b = Matrix()
                mat = multi(mat, b)
            }
        }
        
        return mat
    }
    
    func multi(_ a: Matrix, _ b: Matrix)-> Matrix {
        var mat = Matrix()
        mat.matrix[0][0] = a.matrix[0][0] * b.matrix[0][0] + a.matrix[0][1] * b.matrix[1][0]
        mat.matrix[0][1] = a.matrix[0][0] * b.matrix[0][1] + a.matrix[0][1] * b.matrix[1][1]
        mat.matrix[1][0] = a.matrix[1][0] * b.matrix[0][0] + a.matrix[1][1] * b.matrix[1][0]
        mat.matrix[1][1] = a.matrix[1][0] * b.matrix[0][1] + a.matrix[1][1] * b.matrix[1][1]
        return mat
    }
}

class Solution {
    func fib(_ n: Int) -> Int {
        if n == 0 {
            return 0
        }
        
        var mat = Matrix()
        
        mat = mat.pow(mat, n)
        
        return mat.matrix[0][1]
    }
}