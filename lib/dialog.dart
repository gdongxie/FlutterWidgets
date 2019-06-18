import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

///showAboutDialog() 方法的参数:
///context	BuildContext	应用上下文	必选
///applicationName	String	应用的名字	可选
///applicationVersion	String	应用的版本	可选
///applicationIcon	Widget	应用的 Icon	可选
///applicationLegalese	String	应用的法律信息	可选
///children	List< Widget>	添加在后面的 Widget	可选
class AboutDialogWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: () {
        showAboutDialog(
          context: context,
          applicationName: 'Flutter UI Widget --对话框',
          applicationVersion: '1.0.0',
        );
      },
      child: Text('Show AboutDialog'),
    );
  }
}

///SimpleDialog 的构造函数及参数说明
///key	Key	Widget 的标识	可选
///title	Widget	对话框的标题
///通常是 Text	可选
///titlePadding	EdgeInsetsGeometry	标题的边距	可选
///children	List< Widget>	对话框的按钮，显示在对话框标题的下面
///通常是一组 SimpleDialogOption	可选
///contentPadding	EdgeInsetsGeometry	内容的边距	可选
///backgroundColor	Color	对话框的背景	可选
///elevation	double	Button 相对于其父级放置的z坐标，这可以控制 Button 下的阴影大小 该值必须>=0	可选
///semanticLabel	String	给文本加上一个语义标签，用于盲人辅助模式下	可选
///shape	ShapeBorder	Widget 的形状	可选
class SimpleDialogWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: () {
        showDialog(
            context: context,
            builder: (context) => SimpleDialog(
                  title: Text('SimpleDialog'),
                  children: <Widget>[
                    ///SimpleDialogOption 是 SimpleDialog 的选项按钮
                    ///SimpleDialogOption 的构造函数：
                    ///key	Key	Widget 的标识	可选
                    ///onPressed	VoidCallback	点击事件，当手指松开时才触发	可选
                    ///child	Widget	显示的内容
                    ///一般是 Text	可选
                    SimpleDialogOption(
                      child: Text('Ok'),
                      onPressed: () {
                        /// SimpleDialog 的 SimpleDialogOption 的 onPressed() 事件，必须要写 Navigator.of(context).pop() ，不然弹窗不会关闭。
                        Navigator.of(context).pop();
                      },
                    ),
                    SimpleDialogOption(
                      child: Text('Cancel'),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    )
                  ],
                ));
      },
      child: Text('SimpleDialog'),
    );
  }
}

///AlertDialog 的构造函数及参数说明
///Key	Key	Widget 的标识	可选
///title	Widget	对话框的标题
///通常是 Text	可选
///titlePadding	EdgeInsetsGeometry	标题的边距	可选
///titleTextStyle	TextStyle	标题的文本格式	可选
///content	Widget	对话框的内容	可选
///contentPadding	EdgeInsetsGeometry	内容的边距	可选
///contentTextStyle	TextStyle	内容的文本格式	可选
///actions	List< Widget>	对话框的选型按钮
///通常是一组 FlatButton	可选
///backgroundColor	Color	对话框的背景	可选
///elevation	double	Button 相对于其父级放置的z坐标，这可以控制 Button 下的阴影大小 该值必须>=0	可选
///semanticLabel	String	给文本加上一个语义标签，用于盲人辅助模式下	可选
///shape	ShapeBorder	Widget 的形状	可选
class AlertDialogWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: () {
        showDialog(
          context: context,
          builder: (context) => AlertDialog(
                title: Text('AlertDialog'),
                content: SingleChildScrollView(
                  child: ListBody(
                    children: <Widget>[
                      Text('This is an alert dialog'),
                      Text('add two options'),
                    ],
                  ),
                ),
                actions: <Widget>[
                  FlatButton(

                      ///  AlertDialog 的 actions 的 onPressed() 事件，必须要写 Navigator.of(context).pop() ，不然弹窗不会关闭。
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: Text('Ok')),
                  FlatButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: Text('Cancel'))
                ],
              ),
        );
      },
      child: Text('AlertDialog'),
    );
  }
}

///CupertinoAlertDialog 是 iOS 风格的 AlertDialog。
///CupertinoAlertDialog 的构造函数及参数说明
///key	Key	Widget 的标识	可选
///title	Widget	对话框的标题
///通常是 Text	可选
///content	Widget	对话框的内容
///通常是 Text	可选
///actions	List< Widget>	对话框的选型按钮
///通常是一组 CupertinoDialogAction	可选
///scrollController	ScrollController	可用于控制对话框中内容的滚动控制器	可选
///actionScrollController	ScrollController	可用于控制对话框中 actions 的滚动控制器	可选
class CupertinoAlertDialogWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: () {
        showDialog(
          context: context,
          builder: (context) => CupertinoAlertDialog(
                title: Text('CupertinoAlertDialog'),
                content: Text('This is a CupertinoAlertDialog'),
                actions: <Widget>[
                  CupertinoDialogAction(
                    child: Text('OK'),
                    onPressed: () {
                      ///CupertinoAlertDialog 的 CupertinoDialogAction 的 onPressed() 事件，必须要写 Navigator.of(context).pop() ，不然弹窗不会关闭。
                      Navigator.of(context).pop();
                    },
                  ),
                  CupertinoDialogAction(
                    child: Text('Cancel'),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  )
                ],
              ),
        );
      },
      child: Text('CupertinoAlertDialog'),
    );
  }
}
