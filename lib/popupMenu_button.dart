import 'package:flutter/material.dart';

///PopupMenuButton 的构造函数及参数说明
///key	Key	Widget 的标识	可选
///itemBuilder	PopupMenuItemBuilder	要显示的菜单	必选
///initialValue	T	初始化的菜单项.如果有，在菜单打开时会突出显示。	可选
///onSelected	PopupMenuItemSelected	当用户从此按钮创建的弹出菜单中选择一个值时调用。	可选
///onCanceled	PopupMenuItemSelected	当用户在不选择项目的情况下关闭弹出菜单时调用。	可选
///tooltip	String	当长按时显示的文本，用于盲人辅助模式下	可选
///elevation	double	Button 相对于其父级放置的z坐标，这可以控制 menu 下的阴影大小
///默认值为8.0，该值必须>=0	可选
///padding	EdgeInsetsGeometry	menu 的内边距	可选
///child	Widget	这个按钮里显示的内容	可选
///icon	Icon	这个按钮里显示的 Icon Widget，前面在 图片框和Icon 一节讲过如何使用 Icon Widget	可选
///offset	Offset	menu 相对按钮的偏移量	可选
class PopupMenuButtonWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<MenuItem>(
      child: Text("PopupMenuButton"),
      onSelected: (MenuItem reslut) {
        print("click" + reslut.toString());
      },
      itemBuilder: (BuildContext context) => <PopupMenuEntry<MenuItem>>[
            const PopupMenuItem(
              child: Text('Menu A'),
              value: MenuItem.menuA,
            ),
            const PopupMenuItem(
              child: Text('Menu B'),
              value: MenuItem.menuB,
            ),
            const PopupMenuItem(
              child: Text('Menu C'),
              value: MenuItem.menuC,
            ),
            const PopupMenuItem(
              child: Text('Menu D'),
              value: MenuItem.menuD,
            )
          ],
    );
  }
}

enum MenuItem { menuA, menuB, menuC, menuD }
