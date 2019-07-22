//
//  AppDelegate.swift
//  Algorithms
//
//  Created by Vivin Jeganathan on 3/3/19.
//  Copyright © 2019 Vivin Jeganathan. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        let nav = UINavigationController(rootViewController: UIViewController())
        
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = nav
        window?.makeKeyAndVisible()
        
        //let algorithmTester = AlgorithmTester()
        //algorithmTester.testWithSampleInputs()
        //print(countDuplicates(numbers: [1,3,1,4,5,6,3,2]))
        
        //LinkedList.executeSample()
        //print(MaximumSubarray.maxSubArray([-2,1,-3,4,-1,2,1,-5,4]))
        
        //print(MergeIntervals.merge([[1,4],[2,3]]))
        
        //print(ProductOfArrayExceptItself.productExceptSelf([1,2,3,4]))
        
        //Permutations.permute(["a","b","c"])
        
//        let randomPick = RandomPick([1,3,4,4])
//        print(randomPick.pickIndex())
//        print(randomPick.pickIndex())
//        print(randomPick.pickIndex())
//        print(randomPick.pickIndex())
//        print(randomPick.pickIndex())
//        print(randomPick.pickIndex())
//        print(randomPick.pickIndex())
//        print(randomPick.pickIndex())
//        print(randomPick.pickIndex())
//        print(randomPick.pickIndex())
//        print(randomPick.pickIndex())
//        print(randomPick.pickIndex())
        
//        Recursion().printRecursion(string: "HELLO")
        
//        let maxStack = MaxStack()
//        maxStack.push(5)
//        maxStack.push(15)
//        maxStack.push(4)
//        maxStack.push(7)
        
//        print(maxStack.push(74))
//        print(maxStack.popMax())
//        print(maxStack.push(89))
//        print(maxStack.push(67))
//        print(maxStack.popMax())
//        print(maxStack.pop())
//        print(maxStack.push(61))
//        print(maxStack.push(-77))
//        print(maxStack.peekMax())
//        print(maxStack.popMax())
//        print(maxStack.push(81))
//        print(maxStack.pop())
//        print(maxStack.push(-71))
//        print(maxStack.push(32))
        
//        let graph = Graph<Int>.sampleGraph()
//        print(graph.depthFirstTraversal())
//        print(graph.breadthFirstTraversal())
//
//        let graph2 = Graph<String>.sampleGraphStringNodes()
//        print(graph2.depthFirstTraversal())
//        print(graph2.breadthFirstTraversal())
        
//        print(IsomorphicStrings.isIsomorphic("ab", "ca"))
        
//        print(FlowerBed.canPlaceFlowers([0,0,1,0,1], 1))
        
//        print(SumOfSquares.judgeSquareSum(5))
//        print(SecondMinimum.testFindSecondMin())
//        BinaryZigZag.testzigzagLevelOrder()
//        BinaryTreeLCA.testBinaryTreeLCA()
//        QuickSort.example()
//        MaxProduct.testMaxProduct()
//        PerfectSquare().test()
//        Paranthesis().test()
//        FindAllPaths().test()
//        GroupAnagrams().test()
        
//        ArrayDegree().sample()
//        PermutationRevision().test()
//        Subsets().sample()
//        BinaryTreeLevelOrder().test()
//        MovingAvg().test()
//        FloodFill().test()
//        SpiralMatrix().test()
//        StringCompress().test()
        RotatedSortedArray().test()
        return true
    }
    
    func countDuplicates(numbers: [Int]) -> Int {
        
        var dictionary = [Int: Int]()
        
        numbers.forEach { (number) in
            dictionary[number] = (dictionary[number] ?? 0) + 1
        }
        
        return dictionary.reduce(0) { (result, tuple) in
            return result + (tuple.value > 1 ? 1 : 0)
        }
        
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

