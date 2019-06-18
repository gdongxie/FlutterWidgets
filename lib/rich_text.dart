import 'package:flutter/material.dart';

///富文本
RichText buildRichText() {
  ///text	TextSpan	文字片段	必选
  ///textAlign	TextAlign	文本的对齐方式	可选
  ///textDirection	TextDirection	文字方向	可选
  ///softWrap	bool	是否支持软换行符
  ///如果是 false 的话，这个文本只有一行，水平方向是无限的	可选
  ///overflow	TextOverflow	文本的截断方式	可选
  ///textScaleFactor	double	代表文本相对于当前字体大小的缩放因子
  ///默认值为1.0	可选
  ///maxLines	int	显示的最大行数	可选
  ///locale	Locale	用于选择用户语言和格式设置首选项的标识符	可选
  ///strutStyle	StrutStyle	设置每行的最小行高	可选
  return new RichText(
      text: TextSpan(children: [
    ///style	TextStyle	文本样式	可选
    ///text	String	要显示的文字	可选
    ///children	List< TextSpan>	子 TextSpan	可选
    ///recognizer	GestureRecognizer	一个手势识别器，它将接收到达此文本范围的事件。	可选
    new TextSpan(
        text: "Hello",
        style: TextStyle(color: Colors.lightBlue, fontSize: 18.0)),
    new TextSpan(
        text: "Flutter", style: TextStyle(color: Colors.green, fontSize: 18.0)),
  ]));
}
