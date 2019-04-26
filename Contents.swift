import UIKit

//背景
var rect = CGRect(x: 0, y: 0, width: 279, height: 179)
let backgroundView = UIView(frame: rect)
backgroundView.backgroundColor = UIColor(red: 0, green: 0, blue: 0, alpha: 1)

let aDegree = CGFloat.pi / 180

//臉
let pathhead = UIBezierPath(arcCenter: CGPoint(x: 139, y: 70), radius: 45, startAngle: aDegree * 200, endAngle: aDegree * 340, clockwise: false)
let headLayer = CAShapeLayer()
headLayer.path = pathhead.cgPath
headLayer.fillColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1).cgColor

//下巴
let pathchin = UIBezierPath(roundedRect: CGRect(x: 111, y: 106, width: 56, height: 50), byRoundingCorners: [.bottomLeft, .bottomRight], cornerRadii: CGSize(width: 20, height: 5))
let chinLayer = CAShapeLayer()
chinLayer.path =  pathchin.cgPath
chinLayer.fillColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1).cgColor

//眼睛鼻子
let patheyeL = UIBezierPath(ovalIn: CGRect(x: 100, y: 60, width: 35, height: 35))
let patheyeR = UIBezierPath(ovalIn: CGRect(x: 145, y: 60, width: 35, height: 35))
let pathnose = UIBezierPath(ovalIn: CGRect(x: 132, y: 95, width: 16, height: 16))
let faceLayer = CAShapeLayer()
patheyeL.append(patheyeR)
patheyeL.append(pathnose)
faceLayer.path = patheyeL.cgPath

//牙齒
let pathteeth = UIBezierPath(arcCenter: CGPoint(x: 139, y: 70), radius: 46, startAngle: aDegree * 200, endAngle: aDegree * 340, clockwise: false)
let teethLayer = CAShapeLayer()
teethLayer.path = pathteeth.cgPath

let pathteeth1 = UIBezierPath()
var point = CGPoint(x: 111, y: 115)
pathteeth1.move(to: point)
pathteeth1.addQuadCurve(to: CGPoint(x: 166, y: 115), controlPoint: CGPoint(x: 140, y: 139))
let teeth1Layer = CAShapeLayer()
teeth1Layer.path = pathteeth1.cgPath
teeth1Layer.fillColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1).cgColor

let pathteeth2 = UIBezierPath()
point = CGPoint(x: 111, y: 115)
pathteeth2.move(to: point)
pathteeth2.addQuadCurve(to: CGPoint(x: 166, y: 115), controlPoint: CGPoint(x: 140, y: 140))
let teeth2Layer = CAShapeLayer()
teeth2Layer.path = pathteeth2.cgPath
teeth2Layer.fillColor = UIColor(red: 0, green: 0, blue: 0, alpha: 1).cgColor

let pathteeth3 = UIBezierPath()
point = CGPoint(x: 111, y: 125)
pathteeth3.move(to: point)
pathteeth3.addQuadCurve(to: CGPoint(x: 166, y: 125), controlPoint: CGPoint(x: 140, y: 151))
let teeth3Layer = CAShapeLayer()
teeth3Layer.path = pathteeth3.cgPath
teeth3Layer.fillColor = UIColor(red: 0, green: 0, blue: 0, alpha: 1).cgColor

let pathteeth4 = UIBezierPath()
point = CGPoint(x: 111, y: 125)
pathteeth4.move(to: point)
pathteeth4.addQuadCurve(to: CGPoint(x: 166, y: 125), controlPoint: CGPoint(x: 140, y: 150))
let teeth4Layer = CAShapeLayer()
teeth4Layer.path = pathteeth4.cgPath
teeth4Layer.fillColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1).cgColor

let pathteeth5 = UIBezierPath(rect: CGRect(x: 139, y: 115, width: 0.5, height: 23))
let pathteeth6 = UIBezierPath(rect: CGRect(x: 155, y: 110, width: 0.5, height: 23))
let pathteeth7 = UIBezierPath(rect: CGRect(x: 123, y: 110, width: 0.5, height: 23))
pathteeth5.append(pathteeth6)
pathteeth5.append(pathteeth7)
let teeth5Layer = CAShapeLayer()
teeth5Layer.path = pathteeth5.cgPath
teeth5Layer.fillColor = UIColor(red: 0, green: 0, blue: 0, alpha: 1).cgColor

//帽子上半部分(黃)
let pathhat1 = UIBezierPath(arcCenter: CGPoint(x: 139, y: 67), radius: 45, startAngle: aDegree * 210, endAngle: aDegree * 330, clockwise: true)
let hat1Layer = CAShapeLayer()
hat1Layer.path = pathhat1.cgPath
hat1Layer.fillColor = UIColor(red: 1, green: 192/255, blue: 3/255, alpha: 1).cgColor

//帽子上半部分(紅)
let pathhat2 = UIBezierPath(arcCenter: CGPoint(x: 139, y: 67), radius: 45, startAngle: aDegree * 195, endAngle: aDegree * 345, clockwise: true)
let hat2Layer = CAShapeLayer()
hat2Layer.path = pathhat2.cgPath
hat2Layer.fillColor = UIColor(red: 141/255, green: 3/255, blue: 0, alpha: 1).cgColor

//帽子下緣
let pathhat = UIBezierPath(ovalIn: CGRect(x: 78, y: 50, width: 120, height: 15))
let hatLayer = CAShapeLayer()
hatLayer.path = pathhat.cgPath
hatLayer.fillColor = UIColor(red: 1, green: 192/255, blue: 3/255, alpha: 1).cgColor

//左上手
let pathlefthand1 = UIBezierPath()
point = CGPoint(x: 105, y: 45)
pathlefthand1.move(to: point)
point = CGPoint(x: 45, y: 15)
pathlefthand1.addLine(to: point)
point = CGPoint(x: 35, y: 20)
pathlefthand1.addLine(to: point)
point = CGPoint(x: 36, y: 32)
pathlefthand1.addLine(to: point)
point = CGPoint(x: 88, y: 58)
pathlefthand1.addLine(to: point)
let pathleft1 = UIBezierPath(arcCenter: CGPoint(x: 38, y: 15), radius: 7, startAngle: aDegree * 15, endAngle: aDegree * 100, clockwise: false)
pathlefthand1.append(pathleft1)
let pathleft2 = UIBezierPath(arcCenter: CGPoint(x: 34, y: 26), radius: 7, startAngle: aDegree * 60, endAngle: aDegree * 290, clockwise: true)
pathlefthand1.close()
let lefthandLayer1 = CAShapeLayer()
lefthandLayer1.path = pathlefthand1.cgPath
lefthandLayer1.fillColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1).cgColor
let lefthandLayer4 = CAShapeLayer()
lefthandLayer4.path = pathleft2.cgPath
lefthandLayer4.fillColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1).cgColor

//左下手
let pathlefthand2 = UIBezierPath()
point = CGPoint(x: 111, y: 106)
pathlefthand2.move(to: point)
point = CGPoint(x: 35, y: 136)
pathlefthand2.addLine(to: point)
point = CGPoint(x: 30, y: 150)
pathlefthand2.addLine(to: point)
point = CGPoint(x: 40, y: 155)
pathlefthand2.addLine(to: point)
point = CGPoint(x: 111, y: 125)
pathlefthand2.addLine(to: point)
let pathleft3 = UIBezierPath(arcCenter: CGPoint(x: 31, y: 140), radius: 7, startAngle: aDegree * 20, endAngle: aDegree * 320, clockwise: true)
let pathleft4 = UIBezierPath(arcCenter: CGPoint(x: 34, y: 155), radius: 7, startAngle: aDegree * 10, endAngle: aDegree * 300, clockwise: true)
pathlefthand2.close()
let lefthandLayer2 = CAShapeLayer()
lefthandLayer2.path = pathlefthand2.cgPath
lefthandLayer2.fillColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1).cgColor
let lefthandLayer3 = CAShapeLayer()
lefthandLayer3.path = pathleft3.cgPath
lefthandLayer3.fillColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1).cgColor
let lefthandLayer5 = CAShapeLayer()
lefthandLayer5.path = pathleft4.cgPath
lefthandLayer5.fillColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1).cgColor

//右上手
let pathrighthand1 = UIBezierPath()
point = CGPoint(x: 173, y: 45)
pathrighthand1.move(to: point)
point = CGPoint(x: 233, y: 15)
pathrighthand1.addLine(to: point)
point = CGPoint(x: 243, y: 20)
pathrighthand1.addLine(to: point)
point = CGPoint(x: 244, y: 32)
pathrighthand1.addLine(to: point)
point = CGPoint(x: 190, y: 58)
pathrighthand1.addLine(to: point)
pathrighthand1.close()
let pathright1 = UIBezierPath(arcCenter: CGPoint(x: 240, y: 15), radius: 7, startAngle: aDegree * 90, endAngle: aDegree * 170, clockwise: false)
let pathright2 = UIBezierPath(arcCenter: CGPoint(x: 247, y: 25), radius: 7, startAngle: aDegree * 120, endAngle: aDegree * 210, clockwise: false)
let righthandLayer1 = CAShapeLayer()
righthandLayer1.path = pathrighthand1.cgPath
righthandLayer1.fillColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1).cgColor
let righthandLayer3 = CAShapeLayer()
righthandLayer3.path = pathright1.cgPath
righthandLayer3.fillColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1).cgColor
let righthandLayer4 = CAShapeLayer()
righthandLayer4.path = pathright2.cgPath
righthandLayer4.fillColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1).cgColor

//右下手
let pathrighthand2 = UIBezierPath()
point = CGPoint(x: 167, y: 106)
pathrighthand2.move(to: point)
point = CGPoint(x: 244, y: 136)
pathrighthand2.addLine(to: point)
point = CGPoint(x: 248, y: 150)
pathrighthand2.addLine(to: point)
point = CGPoint(x: 238, y: 155)
pathrighthand2.addLine(to: point)
point = CGPoint(x: 167, y: 125)
pathrighthand2.addLine(to: point)
pathrighthand2.close()
let pathright3 = UIBezierPath(arcCenter: CGPoint(x: 251, y: 142), radius: 8, startAngle: aDegree * 210, endAngle: aDegree * 140, clockwise: true)
let pathright4 = UIBezierPath(arcCenter: CGPoint(x: 245, y: 155), radius: 8, startAngle: aDegree * 260, endAngle: aDegree * 240, clockwise: true)
let righthandLayer2 = CAShapeLayer()
righthandLayer2.path = pathrighthand2.cgPath
righthandLayer2.fillColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1).cgColor
let righthandLayer5 = CAShapeLayer()
righthandLayer5.path = pathright3.cgPath
righthandLayer5.fillColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1).cgColor
let righthandLayer6 = CAShapeLayer()
righthandLayer6.path = pathright4.cgPath
righthandLayer6.fillColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1).cgColor

//將layer加到view
backgroundView.layer.addSublayer(lefthandLayer1)
backgroundView.layer.addSublayer(lefthandLayer2)
backgroundView.layer.addSublayer(lefthandLayer3)
backgroundView.layer.addSublayer(lefthandLayer4)
backgroundView.layer.addSublayer(lefthandLayer5)
backgroundView.layer.addSublayer(righthandLayer1)
backgroundView.layer.addSublayer(righthandLayer2)
backgroundView.layer.addSublayer(righthandLayer3)
backgroundView.layer.addSublayer(righthandLayer4)
backgroundView.layer.addSublayer(righthandLayer5)
backgroundView.layer.addSublayer(righthandLayer6)
backgroundView.layer.addSublayer(hat2Layer)
backgroundView.layer.addSublayer(hat1Layer)
backgroundView.layer.addSublayer(hatLayer)
backgroundView.layer.addSublayer(chinLayer)
backgroundView.layer.addSublayer(teeth3Layer)
backgroundView.layer.addSublayer(teeth4Layer)
backgroundView.layer.addSublayer(teeth2Layer)
backgroundView.layer.addSublayer(teeth1Layer)
backgroundView.layer.addSublayer(teeth5Layer)
backgroundView.layer.addSublayer(teethLayer)
backgroundView.layer.addSublayer(headLayer)
backgroundView.layer.addSublayer(faceLayer)

backgroundView
/*var rect = CGRect(x: 0, y: 0, width: 279, height: 179)
let backgroundView = UIView(frame: rect)
backgroundView.backgroundColor = UIColor(red: 1, green: 1, blue: 0, alpha: 1)

let rectgroundView = UIView(frame: CGRect(x: 0, y: 0, width: 40, height: 40))
rectgroundView.backgroundColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1)
backgroundView.addSubview(rectgroundView)

let rectgroundView1 = UIView(frame: CGRect(x: 239, y: 0, width: 40, height: 40))
rectgroundView1.backgroundColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1)
backgroundView.addSubview(rectgroundView1)

let rectgroundView2 = UIView(frame: CGRect(x: 0, y: 139, width: 40, height: 40))
rectgroundView2.backgroundColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1)
backgroundView.addSubview(rectgroundView2)

let aDegree = CGFloat.pi / 180
let path = UIBezierPath(arcCenter: CGPoint(x: 50, y: 50), radius: 50, startAngle: aDegree * 270, endAngle: aDegree * 90, clockwise: true)
path.addQuadCurve(to: CGPoint(x: 50, y: 0), controlPoint: CGPoint(x: 130, y: 50))

let path1 = UIBezierPath(arcCenter: CGPoint(x: 200, y: 50), radius: 50, startAngle: aDegree * 270, endAngle: aDegree * 90, clockwise: true)
path1.addQuadCurve(to: CGPoint(x: 200, y: 0), controlPoint: CGPoint(x: 230, y: 50))

path1.append(path)

let triangleLayer1 = CAShapeLayer()
triangleLayer1.path = path1.cgPath

triangleLayer1.fillColor = UIColor(red: 0, green: 0, blue: 1, alpha: 1).cgColor

backgroundView.layer.addSublayer(triangleLayer1)
backgroundView*/
