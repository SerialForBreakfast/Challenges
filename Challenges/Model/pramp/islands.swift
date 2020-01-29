class Solution {
    func numIslands(_ grid: [[Character]]) -> Int {
        guard grid.count > 0 else { return 0 }
        guard grid[0].count > 0 else { return 0 }
        var matrix = grid
        
        var numberOfIslands = 0
        
        for i in 0..<matrix.count {
            for j in 0..<matrix[0].count {
                if matrix[i][j] == "1" {
                    numberOfIslands += 1
                    helper(&matrix, i, j)
                }
            }
        }
        return numberOfIslands
        
    }
     func helper(_ matrix: inout [[Character]], _ i: Int, _ j: Int) {
            guard i >= 0 && i < matrix.count && j >= 0 && j < matrix[0].count && matrix[i][j]  == "1" else { return }
            matrix[i][j] = "0"
            
            helper(&matrix, i - 1, j)
            helper(&matrix, i + 1, j)
            helper(&matrix, i, j + 1)
            helper(&matrix, i, j - 1)
        }
        
}