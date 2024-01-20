# 98五笔资源库

- 主页
https://wb98.gitee.io/

- 博客
https://wubi98.gitee.io/

- 网盘
http://98wb.ys168.com/


# 98五笔

## 单编码佳作

纯形方案中，有分主副字根的流派，比如「郑码」、「山人通用」、「徐码」等等，还有不分主副根的单编码类方案，五笔就是典型代表。

86、98、新世纪、这三版五笔中，98版是拆字最为和谐自洽，字根数量最多，击键协调性最好，对大字符集适应最好的一版。98五笔，堪称单编码方案类中的巅峰之作。

小狼毫前端的开发者「nameoverflow」，同文输入法作者「osfans」，都是大家比较熟悉的98五笔用户。另外，OpenResty 的作者章亦春，也是98五笔高手，而且非常喜爱鼠须管前端。

98五笔小组一直致力维护98五笔资源，包括不限于制作通用的98五笔输入法软件、发布98五笔码表、扩编98五笔字符集等等。

## 已无版权问题

https://www.bilibili.com/video/av54083952

# 98码表

## OpenCC 资源

「98五笔拆分映射表」内的 txt 文件，是 OpenCC 纯文本词典。如果有需要，可以将之转化为 OpenCC 支持的 ocd2 格式。

## 单行单义表

文件名中标记为「单义」的码表，即「单行单义」表。
表体正文内容为：

`词条+Tab+编码`

一行之内，一个词条。

## 单行多义表

文件名中标记为「多义」的码表，即「单行多义」表。
表体正文内容为：

`编码+空格+词条一+空格+词条二+空格+词条三……`

一行之内，可容纳多个词条。

- 单行多义表的间隔符为「空格」
- 编码排序依照英文字母序，可避免某些输入法程序的检索问题

## GB18030-27533.txt

这个文件是最常用的国标 GB 两万字集，是「单行单义」格式，每个单字对应的编码皆为98五笔全码。
该文件主要用于某些输入法程序的「反查」或「造词」。

## Wubi98-Unicode15.1.txt

Unicode15.1 标准下全部汉字的拆分文件，基于该文件，可以制作一切98五笔码表资源。

完整收录Unicode15.1全部汉字：

| 文件 | 区位 | 
| :-----| :-----|
|cjk_A_6582.txt|中日韩统一表意文字扩展-A|
|cjk_A_ext_10.txt|中日韩统一表意文字扩展-A补充|
|cjk_base_20902.txt|中日韩统一表意文字|
|cjk_base_ext_90.txt|中日韩统一表意文字-补充|
|cjk_B_42711.txt|中日韩统一表意文字扩展-B|
|cjk_B_ext_9.txt|中日韩统一表意文字扩展-B补充|
|cjk_C_4149.txt|中日韩统一表意文字扩展-C|
|cjk_C_ext_5.txt|中日韩统一表意文字扩展-C补充|
|cjk_D_222.txt|中日韩统一表意文字扩展-D|
|cjk_E_5762.txt|中日韩统一表意文字扩展-E|
|cjk_F_7473.txt|中日韩统一表意文字扩展-F|
|cjk_G_4939.txt|中日韩统一表意文字扩展-G|
|cjk_H_4192.txt|中日韩统一表意文字扩展-H|
|cjk_I_622.txt|中日韩统一表意文字扩展-I|
|cjk_BuShou_ext_115.txt|中日汉字部首补充|
|cjk_HanZhiBiHua_36.txt|中日韩笔画|
|cjk_JianRongHanZhi_472.txt|中日韩兼容表意义字|
|cjk_JianRong_ext_542.txt|中日韩兼容表意义字补充|
|cjk_KangXiBuShou_214.txt|康熙字典部首|
|others.txt|日制文字|

剔除PUA点位之后，计 99049 个汉字。

以此文件为基础，98五笔小组发布了一个用于演示、记录、分享基于 python 自动化处理并生成可用码表的新档：https://github.com/yanhuacuo/98wubi-unicode/tree/master

可以生成：

- fcitx5 纯文本码表
- 单行多义码表
- 单行单义码表
- RIME码表
- [Unicode15.1点位明细表](https://github.com/yanhuacuo/98wubi-unicode/tree/master/python-Unicode/CJK)

# 超集字体

- [网盘](http://98wb.ysepan.com/) 获取超集字体，以完整显示 Unicode15.1 近十万汉字。

- [《字体清理与重置》](https://wubi98.gitee.io/2023/12/22/2023-12-22-001.fonts/)

# 学习文件

- 《高频3500字详拆版.pdf》

98五笔的拆字与上手，过于简单，很多入坑的网友反馈翻翻这份《高频3500字详拆版.pdf》就上手了。特地于此存档一份，供参考。

- 字根图

基于AI制作，转为点阵图的98五笔字根图，艺术成份很高。

# 98五笔成品软件

98五笔小组开发了「weasel-tool」、「rimetool」，可对「小狼毫」、「鼠须管」、「ibus-rime」、「fcitx5-rime」进行全面可视化的词库管理、上屏行为控制，可到 [网盘](http://98wb.ysepan.com/) 下载体验。

演示：

- [小狼毫输入法98五笔版](https://www.bilibili.com/video/BV1L94y1p7Ud/?spm_id_from=333.999.0.0&vd_source=0d05a37563bb1109bc73f16a8004a282)

- [小狼毫输入法设置锦集](https://space.bilibili.com/13979976/channel/collectiondetail?sid=1665413)

- [中州韵词库管理器](https://www.bilibili.com/video/BV1yX4y187Ne/?spm_id_from=333.999.0.0&vd_source=0d05a37563bb1109bc73f16a8004a282)

