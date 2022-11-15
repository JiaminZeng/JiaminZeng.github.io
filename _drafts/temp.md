
# Correlation Cube Attacks: From Weak-Key Distinguisher to Key Recovery

## Abstract

1. 提出了一种新的立方体攻击称为 correlation cube attack
   1. 简要的介绍了一下
   2. 呈现了一个基本的细节
   3. 最大的一个优势在哪

2. 使用这种攻击去减少Trivium它的轮数，介绍一种应用场景
   1. 这个攻击基于什么
   2. 本质上最大的发现 efficiently find a basis of the superpoly，然后延伸做了啥
   3. 稍微讲了一下效果

3. 最后来一句总结，夸一下

## Introduction

1. 先泛谈一下， cube attacks 还有它的变种 对 symmetric cryptosystems 这种的效果不错
   1. 起源，介绍下开始做了啥
   2. 解释攻击大概是在做个啥，目标是什么，稍微提了一下谁做的不错的效果

2. 简要介绍一下各种 tube attacks 变种（ cube testers, dynamic cube attacks and conditional cube attacks ），各种tube attacks攻击的优略、关系和作用之类的

3. tube attacks 成功的关键在找好的cubes还有它对应的superpolys
   1. 稍微提了一下找到了可以干嘛
   2. 介绍了一下发展的过程，比如一些方法还有提升之类的
4. 较为详细的介绍了最近的两种方法

### Our Contributions

1. 攻击名字，基本含义，能干啥
2. 攻击的一个基本组层情况
3. 主要的两个攻击实验，解释一下配置
4. 试验的结果展示
5. 详细一点介绍攻击第一步，简要介绍第二步
6. 另外的一个部分试验，效果还行有用，但是没有完全有效

### Related Work

1. 讲一下correlation cube attacks相关的东西，得出个小结论 a generalization of conditional cube attacks
2. 提一下 conditions cube attacks 有三类，能干啥。最后提一下自己这类的不寻常之处

### Organization

剩下的文章结构

## 2 Preliminaries

介绍一些前要的技术和方法

- Boolean Functions and Algebraic Degree
- Decomposition and Basis of Boolean Functions.
- Cube Attacks and Cube Testers.
- Numeric Mapping

## Correlation Cube Attacks

一般框架

1. 首段再次介绍
2. 后续提攻击分成两个部分

### Preprocessing Phase（step 1）

介绍 + 算法 + 例子 + 复杂度

### Online Phase （step 2）

介绍 + 算法 + 复杂度

### Discussion

1. 有个什么理论边界，介绍了一下。然后说试验表明这是合理。
2. 在某些情况下，这个算法部分地方会有轻微的修改

## Applications to Trivium Stream Cipher

试验

1. a brief description of the stream cipher Trivium（4.1）, as well as recall the technique（4.2） for estimating the degree of Trivium based on numeric mapping（4.3）

2. apply the correlation cube attack to two variants of Trivium when the number of initialization rounds is reduced from 1152 to 805 and 835（4.4）。 按照攻击的一个标准流程一步一步展示这些东西。
  
3. we will discuss the possible improvements, and partially apply our analysis techniques to the stream ciphers TriviA-SC and Kreyvium
   1. **Improvements of the Attack**，说明一下文章的方法怎么提升的，如何提升
   2. **Success Probability of the Attack**，总结说明
   3. **Applications to TriviA-SC and Kreyvium**，总结说明这块做到了一个什么程度

## Conclusions
