//
//  ColorPlayViewController.swift
//  SCColorPlay
//
//  Created by ShaoPo Huang on 2019/12/8.
//  Copyright © 2019 ShaoPo Huang. All rights reserved.
//

import UIKit

class ColorPlayViewController: UIViewController {
    
    @IBOutlet weak var SCImage: UIImageView!
    
    @IBOutlet weak var RedNum: UILabel!
    @IBOutlet weak var GreenNum: UILabel!
    @IBOutlet weak var BlueNum: UILabel!
    @IBOutlet weak var AlphaNum: UILabel!
    
    @IBOutlet weak var RedSlider: UISlider!
    @IBOutlet weak var GreenSlider: UISlider!
    @IBOutlet weak var BlueSlider: UISlider!
    @IBOutlet weak var AlphaSlider: UISlider!
    
    //初始化
    var redValue:Float = 255
    var greenValue:Float = 255
    var blueValue:Float = 255
    var alphaValue:Float = 1
    var randomAlpha:Int = 0
    
    //拉動 RedSlider Change Value 後呼叫 ColorChange()
    @IBAction func RedSliderVC(_ sender: UISlider) {
        
        RedNum.text = "\(Int(RedSlider.value))/255"
        GreenNum.text = "\(Int(GreenSlider.value))/255"
        BlueNum.text = "\(Int(BlueSlider.value))/255"
        AlphaNum.text = "\(String(format: "%.1f" ,AlphaSlider.value))"
        
        SCImage.backgroundColor = UIColor(displayP3Red: CGFloat(RedSlider.value/255), green: CGFloat(GreenSlider.value/255), blue: CGFloat(BlueSlider.value/255), alpha: CGFloat(AlphaSlider.value))
        
    }
    
    @IBAction func RandomColor(_ sender: UIButton) {
        
        redValue = Float.random(in: 0...255)
        greenValue = Float.random(in: 0...255)
        blueValue = Float.random(in: 0...255)
        randomAlpha = Int.random(in: 0...10)
        print(randomAlpha)
        
        //轉換顯示樣式
        let RSV:Int = Int(redValue)
        let GSV:Int = Int(greenValue)
        let BSV:Int = Int(blueValue)
        
        RedNum.text = "\(RSV)/255"
        GreenNum.text = "\(GSV)/255"
        BlueNum.text = "\(BSV)/255"
        AlphaNum.text = "\(Float(randomAlpha)/10)"
        
        RedSlider.value = Float(RSV)
        GreenSlider.value = Float(GSV)
        BlueSlider.value = Float(BSV)
        AlphaSlider.value = (Float(randomAlpha)/10)
        print(AlphaSlider.value)
        
        SCImage.backgroundColor = UIColor(displayP3Red: CGFloat(redValue/255), green: CGFloat(greenValue/255), blue: CGFloat(blueValue/255), alpha: CGFloat(AlphaSlider.value))
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        initColor()
        
    }
    
    //初始化介面
    func initColor(){
        SCImage.backgroundColor = UIColor(displayP3Red:1, green: 1, blue: 1, alpha: 1)
        
        RedSlider.tintColor = UIColor(displayP3Red: 255/255, green: 0, blue: 0, alpha: 1)
        GreenSlider.tintColor = UIColor(displayP3Red: 0, green: 255/255, blue: 0, alpha: 1)
        BlueSlider.tintColor = UIColor(displayP3Red: 0, green: 0, blue: 255/255, alpha: 1)
        AlphaSlider.tintColor = UIColor(displayP3Red: 154/255, green: 154/255, blue: 154/255, alpha: 1)
        
        RedSlider.value = 255
        GreenSlider.value = 255
        BlueSlider.value = 255
        AlphaSlider.value = 10
        
        RedNum.textColor = UIColor(displayP3Red: 255/255, green: 0, blue: 0, alpha: 1)
        GreenNum.textColor = UIColor(displayP3Red: 0, green: 255/255, blue: 0, alpha: 1)
        BlueNum.textColor = UIColor(displayP3Red: 0, green: 0, blue: 255/255, alpha: 1)
        AlphaNum.textColor = UIColor(displayP3Red: 154/255, green: 154/255, blue: 154/255, alpha: 1)
        
        RedNum.text = "255/255"
        GreenNum.text = "255/255"
        BlueNum.text = "255/255"
        AlphaNum.text = "1.0"
        
    }
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
}
