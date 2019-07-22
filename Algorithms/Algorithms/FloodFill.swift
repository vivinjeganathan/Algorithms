//
//  FloodFil.swift
//  Algorithms
//
//  Created by Vivin Jeganathan on 6/22/19.
//  Copyright © 2019 Vivin Jeganathan. All rights reserved.
//

import UIKit


class FloodFill {
    
    func test() {
        
        let image = [[1,1,1],[1,1,0],[1,0,1]]
        print(floodFill(image, 1, 1, 2))
    }
    
    func floodFill(_ image: [[Int]], _ sr: Int, _ sc: Int, _ newColor: Int) -> [[Int]] {
        var image = image
        floodFill1(&image, sr, sc, newColor)
        return image
    }
    
    func floodFill1(_ image: inout [[Int]], _ sr: Int, _ sc: Int, _ newColor: Int) {
        
        if sr < 0 || sc < 0 || sr > image.count, sc > image[sr].count {
            return
        }
        
        if sr > 0, image[sr][sc] == image[sr-1][sc] {
            floodFill1(&image, sr-1, sc, newColor)
            image[sr][sc] = newColor
            return
        }
        
        if sr < image.count, image[sr][sc] == image[sr+1][sc] {
            floodFill1(&image, sr+1, sc, newColor)
            image[sr][sc] = newColor
            return
        }
        
        if sc > 0, image[sr][sc] == image[sr][sc-1] {
            floodFill1(&image, sr, sc-1, newColor)
            image[sr][sc] = newColor
            return
        }
        
        if sc < image[sr].count, image[sr][sc] == image[sr][sc+1] {
            floodFill1(&image, sr, sc+1, newColor)
            image[sr][sc] = newColor
            return
        }
    }
}
