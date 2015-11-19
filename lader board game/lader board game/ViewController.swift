//
//  ViewController.swift
//  lader board game
//
//  Created by flying-board on 2015/11/18.
//  Copyright © 2015年 flying-board. All rights reserved.
//

import UIKit

//랜덤 주사위 생성
func RollDice() -> UInt32 {
    var Dice: UInt32
    repeat {
        Dice = arc4random_uniform(7)
    }
        while Dice == 0
    return Dice
}

//주사위 수만큼 숫자가 증가하고 25이상이 되면 게임 종료
var move:UInt32 = 0
var val:UInt32 = 0

while move < 25 {
    val = RollDice()
    print("주사위를 던졌다. \(val)이(가) 나왔다!")
    move = move + val
    print("\(move)로 이동!")
    switch move {
    case 3:
        move = 11
        print("사다리를 타고 \(move)로 이동!")
    case 6:
        move = 17
        print("사다리를 타고 \(move)로 이동!")
    case 9:
        move = 18
        print("사다리를 타고 \(move)로 이동!")
    case 10:
        move = 12
        print("사다리를 타고 \(move)로 이동!")
    case 14:
        move = 4
        print("폭포를 타고 \(move)로 이동!")
    case 19:
        move = 8
        print("폭포를 타고 \(move)로 이동!")
    case 22:
        move = 20
        print("폭포를 타고 \(move)로 이동!")
    case 24:
        move = 16
        print("폭포를 타고 \(move)로 이동!")
    default :
        move
    }
}
print ("Win!")


class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}



