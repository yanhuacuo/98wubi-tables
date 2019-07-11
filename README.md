## 资源库主页

https://98wb.github.io/

## 纯形佳作

纯形方案中，有分主副字根的流派，比如「郑码」、「山人通用」、「徐码」等等，还有不分主副根的单编码类方案，五笔就是典型代表。
而86、98、新世纪、这三版五笔中，98版是拆字最为和谐自洽，字根数量最多，击键协调性最好，对大字符集适应最好的一版。
小狼毫前端的开发者「nameoverflow」，同文输入法作者「osfans」，都是大家比较熟悉的98五笔用户。另外，OpenResty 的作者章亦春，也是98五笔高手，而且非常喜爱鼠须管前端。
98五笔小组一直致力维护98五笔资源，自 librime-1.3.2 内核对多翻译器支持的缺陷修复后，我们将资源制作的重心转移到中州韵平台上。

## 已无版权问题

https://www.bilibili.com/video/av54083952

## 中州韵上的98五笔

- opencc组件适配

我们利用 opencc 组件在 RIME 上所俱备的给候选词「嵌入注解」的功能，制作了98五笔码元拆分提示：

![weasel](https://raw.githubusercontent.com/yanhuacuo/98wubi/master/linux/%E5%B0%8F%E7%8B%BC%E6%AF%AB.gif)

借助于 RIME 的跨平台特性，在 Linux \ MacOS \ Android 等不同操作系统下的中州韵前端，也有同样精美的功能实现:

![squirrel](https://raw.githubusercontent.com/yanhuacuo/98wubi/master/linux/%E5%8D%95%E5%AD%97%E4%B8%8B%E7%9A%84%E6%88%AA%E5%9B%BE.jpg)

其实这并不容易，我们从零制作了拆分提示所需要的「矢量字体」，并且对日常使用的 GB18030 全部两万七千多汉字逐一校对 opencc 拆分文件。但这些辛苦非常值得，用惯了普通输入法软件的人，初见这样的功能界面时，无不惊艳。

![three](https://raw.githubusercontent.com/yanhuacuo/98wubi/master/linux/shot.jpg)

这部分功能的实现，拓展到了「拼音反查」中，当用户以「z」键进入「临时拼音」时，我们以 opencc 「嵌入注解」的模式，提供「三重注解」：

![ibus-rime](https://raw.githubusercontent.com/yanhuacuo/98wubi-tables/master/wiki-pic/ibus-rime.png)

<p align="center"><a href="https://github.com/yanhuacuo/98wubi">iBus-Rime 下的拼音反查三重注解</a></p>

- 扩展词库

98五笔主码表中的词条及词频，我们一直在持续更新维护。这部分，是不期望用户删改的。借助于 RIME 扩展词库的功能，我们制作了适配的[98五笔扩展词库](https://github.com/yanhuacuo/98wubi/blob/master/wubi98_ci.extended.dict.yaml)，对于有本地词条管理需求的人，非常友好。

日常有批量添加词条需求的话，可以直接以纯词条的方式，写入扩展词库中，若有类似其它输入法软件「快捷输入」需求的话，也能以追加编码的方式实现。

``````
# ↓ 扩展词库的用法一：「无码加词」
# 无编码词条直接拷贝进来、保存一下，就批量加入了，下面几首诗，可以「五笔词条」的方式打出
# 注意，末尾不可有符号。

春眠不觉晓，处处闻啼鸟。夜来风雨声，花落知多少
红豆生南国，春来发几枝。愿君多采撷，此物最相思
向晚意不适，驱车登古原。夕阳无限好，只是近黄昏
故人西辞黄鹤楼，烟花三月下扬州。孤帆远影碧空尽，唯见长江天际流


# 无编码的词条，程序会自动处理，但不应太长，太长以致无法自动编码的话，就需要手动加入编码了。
# 推荐从别的条目「复制」间隔位填充词条与编码或词频的间隔，以防格式出错。

今夜鄜州月，闺中只独看。遥怜小儿女，未解忆长安。香雾云鬟湿，清辉玉臂寒。何时倚虚幌，双照泪痕干	wyof
清江一曲抱村流，长夏江村事事幽。自去自来堂上燕，相亲相近水中鸥。老妻画纸为棋局，稚子敲针作钓钩。但有故人供禄米，微躯此外更何求	iigg


# ↓ 扩展词库的用法二：「快捷输入」
#  主词库中缺少的常用短语，个人信息等等，可如下快捷输入，删掉下面三行的「#」号，则可以定义在后面的「编码」输出

#北京市海淀区清华大学医学科学楼	addr
#tsps_e@tsinghua.edu.cn	mail
#13552888888	tel
``````

针对扩展词库部分更友好的 GUI 实现，也有了相应计划，正在制作中。

- 引导造词

在日常办公写作中，不离开光标焦点，即时添加新词条是很有用的功能。到目前为止，仅有中州韵能实现输入法光标焦点处引导造词，而且全程不需要视线转移。

这部分功能的实现，依赖于 librime-1.3.2 起，对多翻译器支持的完善。我们使用 3 组翻译器，很巧妙地做到了「主表固序」与「新词靠后」的结合。

- 音形互通

特别做了「~引导以形查音」和「z键引导拼音反查」两种功能，使音和形有互通的办法。辅以码元拆分提示的实现，在能可实现的范围里，最大程度地利用了中州韵的特性。

## 全平台打包

在使用人数最多的 Win 、Mac 和 Android 下，我们制作了傻瓜式的安装包，Linux 下，有一步到位的 Shell 迁移脚本。

除了这些安装方式尽可能地友好之外，在 Android 下，还有同文98五笔版,这样专门绘制皮肤素材的尝试。

![0](https://raw.githubusercontent.com/yanhuacuo/98wubi/master/linux/0.png)
![1](https://raw.githubusercontent.com/yanhuacuo/98wubi/master/linux/2.png)
![2](https://raw.githubusercontent.com/yanhuacuo/98wubi/master/linux/%E6%89%93%E5%AD%97%E7%A4%BA%E6%84%8F.png)


我们98小组维护的98五笔中州韵配置，是目前最大程度地利用了中州韵的特技，而且是用得最好的，没有之一。

## 相关链接

- 98五笔交流群：547820540
- 98五笔项目：[GitHub地址](https://github.com/yanhuacuo/98wubi-tables)
- 98五笔资源库：[资源下载](http://98wb.ys168.com/)
- 98五笔 BiliBili 主页：[B站视频库](https://space.bilibili.com/13979976)
- 98五笔主页：[98wubi](http://www.98wubi.com/)
- 98五笔博客：[五笔小筑](https://98wb.github.io/)
- 98五笔贴吧：[98五笔贴吧](http://tieba.baidu.com/f?kw=98%E4%BA%94%E7%AC%94&ie=utf-8&tab=main)


