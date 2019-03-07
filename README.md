# flutter_demo

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

例如，创建一个Text Widget </br>

```
new Text('Hello World', style: new Style (fontSize :32.0))
```
