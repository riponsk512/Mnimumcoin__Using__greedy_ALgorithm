import Foundation
//Coinchange()
//class Node{
//    var val:Int
//    var left:Node?
//    var right:Node?
//    init(_ val:Int){
//        self.val = val
//    }
//}
//var arr = [Int]()
//func createtree()->Node?{
//    var root:Node? = nil
//    print("Enter the root data:")
//    var val = Int(readLine()!)
//    if val == -1{
//        return nil
//    }
//    root = Node(val!)
//    print("Enter the left child of:\(val!)")
//    root?.left = createtree()
//    print("Enter the right child of:\(val!)")
//    root?.right = createtree()
//    return root
//}
//func btreesearch(node:Node?,sval:Int)->Int?{
//    if node?.val == sval{
//        return sval
//    }
//    if sval<node!.val{
//        if node?.left == nil{
//           return nil
//        }
//        else{
//            return btreesearch(node: node?.left, sval: sval)
//        }
//    }
//    else{
//        if node?.right == nil{
//            return nil
//        }
//        else{
//            return btreesearch(node: node?.right, sval: sval)
//        }
//    }
//
//
//}
//func inoredr(root:Node?){
//    if root == nil{
//        return
//    }
//    inoredr(root: root?.left)
//    print("\(root!.val) ")
//    inoredr(root: root?.right)
//}
//func preorder(root:Node?){
//    if root == nil{
//        return
//    }
//    print(root!.val)
//    preorder(root: root?.left)
//    preorder(root: root?.right)
//
//}
//func postorder(root:Node?){
//    if root == nil{
//        return
//    }
//    postorder(root: root?.left)
//    postorder(root: root?.right)
//    print(root!.val)
//}
//func maxdepth(root:Node?)->Int{
//
//    guard root != nil else{return 0}
//    let leftdepth = maxdepth(root: root?.left)
//    let rightdepth = maxdepth(root: root?.right)
//    if leftdepth>rightdepth{
//        return leftdepth + 1
//
//    }
//    else{
//        return rightdepth + 1
//    }
//
//}
//func treetoarray(root:Node?)->[Int]?{
//    guard  root != nil else{return nil}
//    treetoarray(root: root?.left)
//    arr.append(root!.val)
//   treetoarray(root: root?.right)
//    return arr
//
//}
//
//func mirror(root:Node?)->Node?{
//    guard root != nil else{return nil}
//    mirror(root: root?.left)
//    mirror(root: root?.right)
//    let temp = root!.left
//    root?.left = root!.right
//    root?.right = temp
//    return root
//
//}
//
//
//
//
//
//var node = createtree()
//var bt = btreesearch(node: node, sval: 5)
//if bt == nil {
//    print("not present")
//}
//else{
//    print("\(bt!) is present")
//}
//print("Inorder Traversal is:")
//inoredr(root: node)
//print("Proredr Traversal is:")
//preorder(root: node)
//print("Postorder Traversal is:")
//postorder(root: node)
//print("Max depth is:")
//var m = maxdepth(root: node)
//var y = mirror(root: node)
//print(m)
//print("mirror is:")
//print(y?.val)
//print(y?.left!.val)
//print(y?.right!.val)
//var v = treetoarray(root: node)
//print("array is:")
//print(v)

    var coins = [Int]()
    func minval(of arr:inout [Int],with val:inout Int!){
        var len = arr.count-1
        while len>=0{
            while val >= arr[len]{
                val = val - arr[len]
                coins.append(arr[len])
                
            }
            len -= 1
        }
        
    }
    var arr = [1, 2, 5, 10, 20,
        50, 100, 500, 1000]
var val: Int? = 2050
minval(of: &arr, with: &val)
func disply(){
    for i in coins{
        print(i)
    }
}
   
disply()
