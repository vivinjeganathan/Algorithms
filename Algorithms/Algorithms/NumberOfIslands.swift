//
//  NumberOfIslands.swift
//  Algorithms
//
//  Created by Vivin Jeganathan on 7/6/19.
//  Copyright © 2019 Vivin Jeganathan. All rights reserved.
//

import UIKit

class NumberOfIslands: NSObject {

    func sample() {
        print("number of islands", numIslands([["1","1","1"],["0","1","0"],["1","0","0"],["1","0","1"]]))
    }
    
    func numIslands(_ grid: [[Character]]) -> Int {
        
        if let row = grid.first, row.count == 0 || grid.count == 0 {
            return 0
        }
        var grid = grid
        var numberOfIslands = 0
        
        var i = 0, j = 0
        
        while i < grid.count {
            
            while j < grid.first!.count {
                
                if grid[i][j] == "1" {
                    numberOfIslands += 1
                    dfs(grid: &grid, r: i, c: j)
                }
                
                j += 1
            }
            i += 1
            j = 0
        }
        
        return numberOfIslands
    }
    
    func dfs(grid: inout [[Character]], r: Int, c: Int) {
        
        if r < 0 || c < 0 || r >= grid.count || c >= grid.first!.count || grid[r][c] == "0" {
            return
        }
        
        grid[r][c] = "0"
        dfs(grid: &grid, r: r-1, c: c)
        dfs(grid: &grid, r: r, c: c-1)
        dfs(grid: &grid, r: r+1, c: c)
        dfs(grid: &grid, r: r, c: c+1)
    }
}
