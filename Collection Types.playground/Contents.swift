import UIKit

var arr : [Int] = [1,4,20]
print(arr)

arr.append(5)
print(arr)

arr+=[2,3,4]
print(arr)

arr.append(contentsOf: [100,200])
print(arr)

arr.removeLast()
arr.sort()
print(arr)

var set1 : Set<Array> = [[1,3], [1,3]]
print(set1)

var set2 : Set<AnyHashable> = [1,4,"hello"]
for i in set2 {
    print(i)
}

var simpleSet1 : Set<Int> = [1,3,5,2]
print(simpleSet1.count)
var simpleSet2 : Set<Int> = [10,13,5,2]
print(simpleSet2.sorted())
print(simpleSet2)
print(simpleSet1.intersection(simpleSet2))
print(simpleSet1.symmetricDifference(simpleSet2))
print(simpleSet1.subtracting(simpleSet2))
print(simpleSet1.union(simpleSet2))

var d1 = [1:"a", 2:"b"]
var k = d1.keys
print(k)

var a : Set<Int> = [1,2,3]
var b : Set<Int> = [1,2]
//print(a-b)
