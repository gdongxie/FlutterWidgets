import 'package:flutter/material.dart';

///文本
Text buildText(String text) {
  return new Text(
    ///data 必选
    text,

    ///是否支持换行
    softWrap: true,

    ///显示最大行数
    maxLines: 5,

    ///文本对齐方式
    ///TextAlign.left：左对齐
    ///TextAlign.right：右对齐
    ///TextAlign.center：居中对齐
    ///TextAlign.start：从文字开始的那个方向对齐，如果文字方向从左到右，就左对齐，否则是右对齐
    ///从文字开始的相反方向对齐，如果文字方向从左到右，就右对齐，否则是左对齐
    ///TextAlign.justify
    textAlign: TextAlign.left,

    ///文字方向
    ///TextDirection.ltr：文字方向从左到右
    ///TextDirection.ltr：文字方向从右到左
    textDirection: TextDirection.ltr,

    ///文本的截断方式
    ///TextOverflow.ellipsis：多余文本截断后以省略符“...”表示
    ///TextOverflow.clip：剪切多余文本，多余文本不显示
    ///TextOverflow.fade：将多余的文本设为透明
    overflow: TextOverflow.ellipsis,

    /// 文本样式 可选
    style: TextStyle(

        ///是否继承父 Text 的样式，默认为 true
        ///如果为false，且样式没有设置具体的值，则采用默认值：白色、字体大小 10px、sans-serif 字体
        inherit: true,

        ///文字的颜色
        color: Colors.lightBlueAccent,

        ///文字的大小
        fontSize: 16.0,

        ///字体粗细
        fontWeight: FontWeight.bold,

        ///文字的背景色
        background: new Paint()..color = Colors.white30,

        ///字母之间的间隔
        letterSpacing: 1.5,

        ///单词之间的间隔
        wordSpacing: 3.0,

        ///用于对齐文本的水平线
        textBaseline: TextBaseline.alphabetic,

        ///文本的线条
        ///TextDecoration.underline：下划线
        ///TextDecoration.overline：上划线
        ///TextDecoration.lineThrough：中划线
        ///TextDecoration.none：不划线
        decoration: TextDecoration.underline,

        ///	TextDecoration 线条的颜色
        decorationColor: Colors.yellowAccent,

        ///TextDecoration 线条的样式
        ///TextDecorationStyle.solid：实线
        ///TextDecorationStyle.double：两条线
        ///TextDecorationStyle.dotted：点虚线
        ///TextDecorationStyle.dashed：间隔虚线（比点要长）
        ///TextDecorationStyle.wave：波浪线
        decorationStyle: TextDecorationStyle.dashed),
  );
}
