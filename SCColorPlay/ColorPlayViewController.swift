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
    var alphaValue:Float = 10
    var randomAlpha:Int = 0
    
    //拉動 RedSlider Change Value 後呼叫 ColorChange()
    @IBAction func RedSliderVC(_ sender: UISlider) {
        redValue = RedSlider.value
        ColorChage()
    }
    //拉動 GreenSlider Change Value 後呼叫 ColorChange()
    @IBAction func GreenSlicderVC(_ sender: UISlider) {
        greenValue = GreenSlider.value
        ColorChage()
    }
    //拉動 BlueSlider Change Value 後呼叫 ColorChange()
    @IBAction func BlueSliderVC(_ sender: UISlider) {
        blueValue = BlueSlider.value
        ColorChage()
    }
    //拉動 AlphaSlider Change Value 後呼叫 ColorChange()
    @IBAction func AlphaSliderVC(_ sender: UISlider) {
        alphaValue = AlphaSlider.value
        ColorChage()
    }
    //把變更後的Value帶入
    func ColorChage(){
        
        //轉換顯示樣式
        randomAlpha = Int(alphaValue * 10)
        RedNum.text = "\(Int(redValue))/255"
        GreenNum.text = "\(Int(greenValue))/255"
        BlueNum.text = "\(Int(blueValue))/255"
        AlphaNum.text = "\(Float(randomAlpha)/10)"
        
        SCImage.backgroundColor = UIColor(displayP3Red: CGFloat(redValue/255), green: CGFloat(greenValue/255), blue: CGFloat(blueValue/255), alpha: CGFloat(alphaValue))
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
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
}
