﻿﻿# flutter_demo

A new Flutter application.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.io/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.io/docs/cookbook)

For help getting started with Flutter, view our 
[online documentation](https://flutter.io/docs), which offers tutorials, 
samples, guidance on mobile development, and a full API reference.

## 学习Flutter中的Widget
Flutter布局机制的核心就是widget。在Flutter中，几乎所有东西都是一个widget - 甚至布局模型都是widget。您在Flutter应用中看到的图像、
图标和文本都是widget.甚至你看不到的东西也是widget，例如行（row）、列（column）以及用来排列、约束和对齐这些可见widget的网格（grid）.</br>
下图是此UI的Widget树示意图：

![](https://i.imgur.com/l81sggS.png)
### 如何在Flutter中布局单个Widget
在Flutter中，只需几个步骤即可在屏幕上放置文本，图标或图像。</br>

1.选择一个widget来保存该对象。
根据您想要对齐或约束可见窗口小部件的方式，从各种[布局Widget](https://flutterchina.club/widgets/)中进行

选择， 因为这些特性通常会传递到所包含的widget中。这个例子使用Center，它可以将内容水平和垂直居中。</br>

### [MaterialApp][1]与[Scaffold][2]
* MaterialApp
MaterialApp 表示当前应用的风格是 Material Design。为了使用其他已经封装好的 Material Design 风格的 Widget，
就必须使用 MaterialApp。因此 MaterialApp 经常是 Flutter Widget 树里的第一个元素，就是 Root Widget。

* Scaffold
Scaffold 实现了 Material Design 的基本布局结构，例如 AppBar、Drawer、SnackBar 等，所以为了使用这些布局，也必须要使用 Scaffold，
所以一个 Flutter App的基本结构就是：Root Widget 是 MaterialApp ，然后MaterialApp的子Widget就是 Scaffold，然后我们在Scaffold的子Widget里写UI。


----------


**MaterialApp 大部分情况下要作为 Flutter 的 根Widget，并且 MaterialApp 和 Scaffold 经常是一起搭配使用的。**

----------


    MaterialApp(
    ///标题
    title:'Flutter Demo',
    ///该颜色为 Android 中程序切换中应用图标背景的颜色.
    color:Colors.red,
    ///设置 Flutter App 的主题，比如颜色、字体等。
    theme：ThemeData(
        primaryColor: Colors.lightBlueAccent,
      ),
    ///home 是 MaterialApp 一个很重要的属性，它是 Widget 类型，必须要赋值。
    ///进入程序后显示的第一个页面，必须是 Scaffold
    home: Scaffold(
       ...
    )
    )
MaterialApp的[构造方法][3]

    const MaterialApp({
    Key key,
    this.navigatorKey,
    this.home,
    this.routes = const <String, WidgetBuilder>{},
    this.initialRoute,
    this.onGenerateRoute,
    this.onUnknownRoute,
    this.navigatorObservers = const <NavigatorObserver>[],
    this.builder,
    this.title = '',
    this.onGenerateTitle,
    this.color,
    this.theme,
    this.darkTheme,
    this.locale,
    this.localizationsDelegates,
    this.localeListResolutionCallback,
    this.localeResolutionCallback,
    this.supportedLocales = const <Locale>[Locale('en', 'US')],
    this.debugShowMaterialGrid = false,
    this.showPerformanceOverlay = false,
    this.checkerboardRasterCacheImages = false,
    this.checkerboardOffscreenLayers = false,
    this.showSemanticsDebugger = false,
    this.debugShowCheckedModeBanner = true,
    })
    

Scaffold的使用
Scaffold 是实现 Material Design 基本视觉布局结构的 Widget,它被设计为 MaterialApp 的顶级容器，会自动填满屏幕，而且会自动适配不同的屏幕，例如刘海屏等。
Scaffold 总共有 16 个属性，以下是现在使用到的几个属性：

Scaffold的[构造方法][4]

    const Scaffold({
      Key key,
      this.appBar,
      this.body,
      this.floatingActionButton,
      this.floatingActionButtonLocation,
      this.floatingActionButtonAnimator,
      this.persistentFooterButtons,
      this.drawer,
      this.endDrawer,
      this.bottomNavigationBar,
      this.bottomSheet,
      this.backgroundColor,
      this.resizeToAvoidBottomPadding,
      this.resizeToAvoidBottomInset,
      this.primary = true,
      this.drawerDragStartBehavior = DragStartBehavior.start,
      this.extendBody = false,
      })
  
  
  
  [1]: https://api.flutter.dev/flutter/material/MaterialApp-class.html
  [2]: https://api.flutter.dev/flutter/material/Scaffold-class.html
  [3]: https://api.flutter.dev/flutter/material/MaterialApp/MaterialApp.html
  [4]: https://api.flutter.dev/flutter/material/Scaffold/Scaffold.html

