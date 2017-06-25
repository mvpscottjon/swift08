//
//  myapi.swift
//  sevenS08
//
//  Created by user on 2017/6/15.
//  Copyright © 2017年 seven. All rights reserved.
//

import Foundation


class c1 {
    
}
//print(type(of:obj1))

class c2 {
    init(){   //建構式 ＝>物件初始化=>屬性初始化  1.沒有func 2.沒有return
        print("init")
    }
}


class c3 {
    var x = 1
    var y = 1
    init() {}
}



class c4 {
    var x:Int
    var y:Int
//        init(){  //不能兩個init
//        }
    init(x:Int, y:Int) {
        //       或 x = newx; y = newy
        self.x = x; self.y = y
    }
    func m1()->Int {
        return 123
    }
    
}







class Student {
    var m:Int     //math
    var e:Int       //english
    var c:Int       //chinese
    var sid:String  //student id
    
    //底線表 傳遞參數的名稱不用寫 如s1("s01") 不用 s1(sid:"s01")
    init( _ sid:String ,_ m:Int, _ e:Int, _ c:Int) {
    self.m = m
    self.e = e
    self.c = c
    self.sid = sid
    }
    
    func sum() ->Int {
        return c + e + m
    }
    
    func avg() ->Double {
        return Double(sum()) / 3.0
    }
    
    
}




class Bike {
    private var speed: Double
//    var a:Double
    init(_ speed:Double) {
        self.speed = speed
//        self.a = a
    }
        func upSpeed() {
            speed = speed < 1 ? 1 : speed * 1.2
            
        }
        
        func downSpeed() {
             speed = speed < 1 ? 0 : speed * 0.7
        }
        
        func getSpeed() ->Double{
            return speed
        }
        
        func clone() ->Bike {
            return Bike(speed)
        }
        
        
        
    }
    
class c6 {
    init() {
        print("c6:init()")
    }
    
    func m1() {
        print("c6:m1()")
    }
    
}


class c5 {
    var p1 = c6()   //一開始先跑c6()
    lazy var p2:c6 = c6()  //不馬上跑建構式 僅第一次叫用會執行
    func dosth() {
        print("ok")
        p2.m1()
    }
}



struct MyClass3 {
    var x = 1
    var y = 1

}

//******struc 補充

//struct get set的故事


//get practice
struct  MyTest {
    var a9 = MyClass3()
    var a10:MyClass3 {
        get {
          let newx = a9.x + 10
            let newy = a9.y + 10
           
            return MyClass3(x:newx,y:newy)
        }
    
    }
}




struct MyClass4 {
    var v1 = MyClass3()  // ==> x = 1 ; y = 1
    var v2:MyClass3 {
        get {    //取值要return
            let newx = v1.x + 10
            let newy = v1.y + 20
            return MyClass3(x:newx, y:newy)
        }
        set(aClass3Obj) {    //給值要帶參數---aClss3Obj僅為參數名稱
            v1.x = aClass3Obj.x - 30   //為什麼set 是代v1.x???
            v1.y = aClass3Obj.y - 30
            
         
            
        }
    }
    var v3:MyClass3 {
        //{...} 中可以使用原先定義的屬性
        //定義 getter & setter
        //透過v3 的 取值(getter) ==> xxx = v3
        // setter ==> v3 = xxx
        
        get {   //有set的話一定要有set
            return MyClass3(x:1, y:2)
        }
        set(aVar) {
            // aVar 一定要是 MyClass3
            //set 沒給參數會是預設的newValue
//            newValue.x-100
            
        
        }
        
    }
}




class MyScore {
    var x = 0, y = 0, z = 0;
    
    //或者用初始化  但new Obj need parameter
//    var x:Int
//    var y:Int
//    var z:Int
//    init(_ x:Int,_ y:Int,_ z:Int) {
//      self.x = x
//        self.y = y
//        self.z = z
//     
//    }
    
    
    var sum:Int {  //值 因 x, y, z 而不同
//        get { 只get的話可省略
            return x + y + z
//        }
    
    }
    
    var avg:Double {
//        get{
            return Double(sum) / 3.0
        
//        }
    
    }
    
}


//******  willSet didSet
    class MyClass5 {
        var x :Int = 0 {
            willSet(newx){  //before set
                print("brfore : \(x) --> \(newx)")
            }
            didSet {   //after set
                
                
                print("brfore : \(x)")
            }
        }
        
    
    }
    
    
//******補充 struct與class差別    struct can't change var value

struct MyStruct111 {
    var a = 1
    func f1(){
//        a = 2  不能改值
        print(a)
    }
    mutating func f2(){   //要改值需加  mutating
        a = 2
        print(a)
        self = MyStruct111(a:100)
    }
    
    
}

class MyClass111 {
    var a = 1
    func f1() {
        a = 2
        print(a)
    
    }
}


