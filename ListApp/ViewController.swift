//
//  ViewController.swift
//  ListApp
//
//  Created by Megumi Mimura on 2018/10/26.
//  Copyright © 2018 三村恵. All rights reserved.
//

import UIKit

//変数の設置
var Contents = [String]()

class ViewController: UIViewController {

    // テキストフィールドの設定
    @IBOutlet weak var TextField: UITextField!
    
    // 追加ボタンの設定
    @IBAction func AddButton(_ sender: Any) {
        //変数に入力内容を入れる
        Contents.append(TextField.text!)
        //追加ボタンを押したらフィールドを空にする
        TextField.text = ""
        //変数の中身をUDに追加
        UserDefaults.standard.set( Contents, forKey: "List" )
        
        //UserDefaults.standard.removeObject(forKey: "List")
        
        print("\(Contents)")
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

