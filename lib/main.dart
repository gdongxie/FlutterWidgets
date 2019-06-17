import 'package:flutter/material.dart';
import 'package:flutter_demo/text.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  /// This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ///创建一个Container,Container中设置了padding 有一个子项为Row
    Widget titleSection = new Container(
      ///设置Padding
      padding: const EdgeInsets.all(32.0),

      ///child里面定义了一个水平布局 Row可以有多个子widget 水平布局
      child: new Row(
        ///Row里面有三个子项  一个Expand 一个Icon 一个Text
        children: <Widget>[
          ///Expanded 只有一个子Widget，在Column和Row充满
          new Expanded(
            ///Column 可以有多个子Widget 垂直布局
            child: new Column(
              ///表示 子Widget 在交叉轴的对齐方式
              crossAxisAlignment: CrossAxisAlignment.start,

              ///定义children子项 子项包括一个Container 一个Text;Container中设置了padding 它的子项为Text 并设置了style
              children: <Widget>[
                new Container(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: new Text(
                    'Oeschinen Lake Campground',
                    style: new TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                new Text(
                  'Kandersteg, Switzerland',
                  style: new TextStyle(
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
          ),

          ///Icon
          new Icon(
            Icons.star,
            color: Colors.red[500],
          ),

          ///Text
          new Text('41'),
        ],
      ),
    );

    /// 定义一个Widget
    Column buildButtonColumn(IconData icon, String lable) {
      ///定义字体颜色
      Color color = Theme.of(context).primaryColor;

      ///返回一个Column  里面children包含一个Icon 一个Container,Container中设置了margin child为Text,并为Text设置了style
      return new Column(
        ///表示主轴应该占多大的空间 默认是最大充满、还是根据child显示最小大小
        mainAxisSize: MainAxisSize.min,

        ///表示子Widget在主轴上的对齐方式  中心对齐
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          new Icon(icon, color: color),
          new Container(
            margin: const EdgeInsets.only(top: 8.0),
            child: new Text(
              ///文本内容
              lable,
              style: new TextStyle(
                ///字体大小
                fontSize: 12.0,

                ///在绘制字体时，使用的字体厚度
                fontWeight: FontWeight.w400,

                ///字体的颜色
                color: color,
              ),
            ),
          ),
        ],
      );
    }

    ///创建一个Widget 一行包含三个buildButtonColumn
    Widget buttonSection = new Container(
      child: new Row(
        ///对齐方式为 空间均匀
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          buildButtonColumn(Icons.call, 'CALL'),
          buildButtonColumn(Icons.near_me, 'ROUTE'),
          buildButtonColumn(Icons.share, 'SHARE'),
        ],
      ),
    );

    ///创建一个Container Widget  设置了padding  child为Text
    Widget textSection = new Container(
      padding: const EdgeInsets.all(20.0),
      child: new Text(
        '''
    Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese Alps. Situated 1,578 meters above sea level, it is one of the larger Alpine Lakes. A gondola ride from Kandersteg, followed by a half-hour walk through pastures and pine forest, leads you to the lake, which warms to 20 degrees Celsius in the summer. Activities enjoyed here include rowing, and riding the summer toboggan run.
    ''',

        ///是否支持换行
        softWrap: true,
      ),
    );

    ///Scaffold 实现了 Material Design 的基本布局结构，
    ///例如 AppBar、Drawer、SnackBar 等，所以为了使用这些布局，也必须要使用 Scaffold，
    ///所以一个 Flutter App的基本结构就是：Root Widget 是 MaterialApp ，
    ///然后 MaterialApp 的子Widget 就是 Scaffold，然后我们在 Scaffold 的 子Widget 里写UI。
    return new Scaffold(
      body: new ListView(
        children: <Widget>[
          new Image.asset(
            'images/zzz.jpg',
            height: 240.0,
            fit: BoxFit.cover,
          ),
          titleSection,
          buttonSection,
          textSection,
          new Container(
            padding: const EdgeInsets.all(15.0),
            child: buildText(
                "A run of text with a single style.The Text widget displays a string of text with single style. The string might break across multiple lines or might all be displayed on the same line depending on the layout constraints.The style argument is optional. When omitted, the text will use the style from the closest enclosing DefaultTextStyle. If the given style's TextStyle.inherit property is true (the default), the given style will be merged with the closest enclosing DefaultTextStyle. This merging behavior is useful, for example, to make the text bold while using the default font family and size."),
          ),
        ],
      ),
    );
  }
}
