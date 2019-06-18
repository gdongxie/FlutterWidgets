import 'package:flutter/material.dart';
import 'package:flutter_demo/rich_text.dart';
import 'package:flutter_demo/text.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyHomePage();
  }
}

class MyHomePage extends State<MyApp> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String _userGender = '男';
  String _userName;
  String _userPassword;

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
    return new MaterialApp(
      title: 'Flutter Widget Demo',
      theme: ThemeData(
        primaryColor: Colors.lightBlueAccent,
      ),
      home: Scaffold(
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

            /// Text、RichText、Image、Icon、TextField
            new Container(
              margin: const EdgeInsets.all(10.0),
              padding: const EdgeInsets.all(10.0),
              alignment: Alignment.center,
              child: new Column(
                children: <Widget>[
                  ///Text
                  buildText(
                      '''A run of text with a single style.The Text widget displays a string of text with single style. The string might break across multiple lines or might all be displayed on the same line depending on the layout constraints.The style argument is optional. When omitted, the text will use the style from the closest enclosing DefaultTextStyle. If the given style's TextStyle.inherit property is true (the default), the given style will be merged with the closest enclosing DefaultTextStyle. This merging behavior is useful, for example, to make the text bold while using the default font family and size.'''),

                  ///RichText
                  buildRichText(),

                  ///Image
                  ///Image.network(url)：从网络加载显示图片,这里需要传入图片的url
                  ///Image.file(file)：从本地文件加载显示图片,这里需要传入图片的本地地址
                  ///Image.asset(name)：从Flutter APP的资源文件里加载显示图片,这里需要传入Flutter APP图片资源文件的路径及图片名字
                  ///Image.memory(bytes)：从内存加载显示图片,这里需要传入图片的bytes数据，类型是Uint8List
                  Image.network(
                    "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1557781801455&di=17f9f2fc3ded4efb7214d2d8314e8426&imgtype=0&src=http%3A%2F%2Fimg2.mukewang.com%2F5b4c075b000198c216000586.jpg",

                    ///用于在图片的显示空间和图片本身大小不同时指定图片的适应模式
                    ///BoxFit.fill	会拉伸填充满显示空间，图片本身长宽比会发生变化，图片会变形。
                    ///BoxFit.contain	会按图片的长宽比放大后居中填满显示空间，图片不会变形，超出显示空间部分会被剪裁。
                    ///BoxFit.cover	这是图片的默认适应规则，图片会在保证图片本身长宽比不变的情况下缩放以适应当前显示空间，图片不会变形。
                    ///BoxFit.fitWidth	图片的宽度会缩放到显示空间的宽度，高度会按比例缩放，然后居中显示，图片不会变形，超出显示空间部分会被剪裁。
                    ///BoxFit.fitHeight	图片的高度会缩放到显示空间的高度，宽度会按比例缩放，然后居中显示，图片不会变形，超出显示空间部分会被剪裁。
                    ///BoxFit.scaleDown	对齐目标框内的源（默认情况下，居中），并在必要时缩小源以确保源适合框内。这与contains相同，如果这会缩小图像，否则它与none相同。
                    ///BoxFit.none	图片没有适应策略，会在显示空间内显示图片，如果图片比显示空间大，则显示空间只会显示图片中间部分
                    fit: BoxFit.cover,

                    ///图片的对齐方式
                    ///Alignment.topLeft	左上对齐
                    ///Alignment.topCenter	上部居中对齐
                    ///Alignment.topRight	右上对齐
                    ///Alignment.centerLeft	中间居左对齐
                    ///Alignment.center	中间对齐
                    ///Alignment.centerRight	中间居右对齐
                    ///Alignment.bottomLeft	左下对齐
                    ///Alignment.bottomCenter	底部居中对齐
                    ///Alignment.bottomRight	右下对齐
                    alignment: Alignment.center,

                    ///ImageRepeat,当图片本身大小小于显示空间时，指定图片的重复规则
                    ///ImageRepeat.repeat	在x和y轴上重复图像，直到填充满空间。
                    ///ImageRepeat.repeatX	在x轴上重复图像，直到填充满空间。
                    ///ImageRepeat.repeatY	在y轴上重复图像，直到填充满空间。
                    ///ImageRepeat.noRepeat	不重复
                    repeat: ImageRepeat.noRepeat,

                    ///设置图片的过滤质量
                    ///FilterQuality.none	最快的过滤。
                    ///FilterQuality.low	比none的过滤质量好，但是比none的时间要长。
                    ///FilterQuality.medium	比low的过滤质量好，但是也比low的时间要长
                    ///FilterQuality.high	过滤质量最高，但也最慢
                    filterQuality: FilterQuality.high,
                  ),

                  ///Icon
                  Icon(Icons.android, size: 60.0, color: Colors.green),

                  ///TextField 输入框
                  ///key	Key	Widget 的标识	可选
                  ///controller	TextEditingController	控制 TextField 的编辑，如果没有设置，会有默认值	可选
                  ///focusNode	FocusNode	用于控制TextField是否占有当前键盘的输入焦点,它是我们和键盘交互的一个handle	可选
                  ///decoration	InputDecoration	用于控制TextField的外观显示，如提示文本、背景颜色、边框等	可选
                  ///style	TextStyle	文本样式	可选
                  ///autofocus	bool	是否自动获取焦点
                  ///默认为false	可选
                  ///obscureText	bool	是否隐藏正在编辑的文本，如用于输入密码的场景等，文本内容会用“•”替换 默认为false	可选
                  ///autocorrect	bool,默认为true	可选
                  ///maxLines	int	显示的最大行数	可选
                  ///maxLength	int	输入框中允许的最大字符数	可选
                  ///maxLengthEnforced	bool	是否强制限制最大字符数，默认为true,true：强制限制最大字符数,false：不限制最大字符数，即使设置了maxLength也不生效	可选
                  ///onChange	ValueChanged	输入框内容改变时的回调函数；注：内容改变事件也可以通过controller来监听	可选
                  ///onEditingComplete	VoidCallback	输入框输入完成时触发，但是onEditingComplete没有参数，不会返回内容	可选
                  ///onSubmitted	ValueChanged	输入框输入完成时触发，但是onSubmitted有参数，会返回内容	可选
                  ///inputFormatters	List< TextInputFormatter>	用于指定输入格式；当用户输入内容改变时，会根据指定的格式来校验。	可选
                  ///enabled	bool	输入框是否禁用,如果为false，则输入框会被禁用，禁用状态不接收输入和事件，同时显示禁用态样式（在其decoration中定义）。	可选
                  ///cursorWidth	double	自定义输入框光标宽度	可选
                  ///cursorRadius	Radius	自定义输入框光标圆角	可选
                  ///cursorColor	Color	自定义输入框光标颜色	可选
                  ///keyboardAppearance	Brightness	设置键盘的亮度模式
                  ///只能在iOS上使用，有两种：Brightness.dart和Brightness.light	可选
                  ///scrollPadding	EdgeInsets	文本框滑动时的间距	可选
                  ///dragStartBehavior	DragStartBehavior	设置确定当用户启动拖动时拖动正式开始的时间	可选
                  ///onTap	GestureTapCallback	TextField的点击事件	可选
                  ///buildCounter	InputCounterWidgetBuilder	生成自定义 InputDecorator.counter 小部件的回调	可选
                  TextField(
                    ///因为是输入框，所以需要获取输入的内容，TextField 获取输入内容有两种方式:
                    ///1.onChanged
                    ///2.TextEditingController
                    ///当用户输入，TextField 的内容发生变化，TextField 就会调用它的 onChanged 回调,
                    ///因此 onChanged 可以实时查看 TextField 的内容变化。
                    onChanged: (String data) {
                      print(data);
                    },

                    ///textAlign	TextAlign	文本的对齐方式	可选
                    textAlign: TextAlign.left,

                    ///textDirection	TextDirection	文字方向	可选
                    textDirection: TextDirection.ltr,

                    ///keyboardType	TextInputType	用于设置该输入框默认的键盘输入类型	可选
                    ///TextInputType.text	文本输入键盘
                    ///TextInputType.multiline	多行文本，需和maxLines配合使用(设为null或大于1)
                    ///TextInputType.number	数字；会弹出数字键盘
                    ///TextInputType.phone	优化后的电话号码输入键盘；会弹出数字键盘并显示"* #"
                    ///TextInputType.datetime	优化后的日期输入键盘；Android上会显示“: -”
                    ///TextInputType.emailAddress	优化后的电子邮件地址；会显示“@ .”
                    ///TextInputType.url	优化后的url输入键盘； 会显示“/ .”
                    keyboardType: TextInputType.text,

                    ///textInputAction	TextInputAction	键盘动作按钮图标(即回车键位图标)	可选
                    textInputAction: TextInputAction.go,

                    ///textCapitalization	TextCapitalization	定义文本的大写格式	可选
                    ///TextCapitalization.none	全部小写
                    ///TextCapitalization.words	每个单词的首字母大写
                    ///TextCapitalization.sentences	每个句子的首字母大写
                    ///TextCapitalization.characters	每个字每大写
                    textCapitalization: TextCapitalization.words,

                    ///enableInteractiveSelection	bool	是否启用交互式选择 ,true：长按将会选中文字，并且弹出 cut/copy/paste 的菜单	可选
                    enableInteractiveSelection: true,
                  ),

                  ///Form 表单
                  Form(
                    ///Widget 的标识
                    key: _formKey,

                    ///是否自动验证，默认为 false
                    ///true：每次输入有变动都会验证
                    ///false：只有调用 FormFieldState.validate 才会验证
                    autovalidate: false,

                    ///Form 的子 Widget 必选
                    child: Column(
                      children: <Widget>[
                        ///DropdownButtonFormField
                        DropdownButtonFormField<String>(
                          value: _userGender,
                          items: ['男', '女']
                              .map((label) => DropdownMenuItem(
                                    child: Text(label),
                                    value: label,
                                  ))
                              .toList(),
                          onChanged: (value) {
                            setState(() {
                              _userGender = value;
                            });
                          },
                          onSaved: (value) {
                            _userGender = value;
                          },
                        ),

                        ///TextFormField
                        TextFormField(
                          decoration: InputDecoration(hintText: '用户名'),
                          validator: (value) {
                            if (value?.length <= 5) {
                              return '用户名必须大于5个字符';
                            }
                          },
                          onSaved: (value) {
                            _userName = value;
                          },
                        ),

                        ///TextFormField
                        TextFormField(
                          decoration: InputDecoration(hintText: '密码'),
                          obscureText: true,
                          validator: (value) {
                            if (value?.length <= 8) {
                              return '密码必须大于8个字符';
                            }
                          },
                          onSaved: (value) {
                            _userPassword = value;
                          },
                        ),

                        ///RaisedButton
                        RaisedButton(
                          child: Text('注册'),
                          onPressed: () {
                            if (_formKey.currentState.validate()) {
                              _formKey.currentState.save();
                              print(_userGender);
                              print(_userName);
                              print(_userPassword);
                            }
                          },
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
