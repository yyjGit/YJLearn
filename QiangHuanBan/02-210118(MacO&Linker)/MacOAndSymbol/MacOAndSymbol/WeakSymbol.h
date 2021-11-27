//
//  WeakSymbol.h
//  Logic0115Demo01
//
//  Created by yyj on 2021/1/17.
//

//
/**
 弱定义符号（weak defintion symbol）：
 如果连接器找到一个非弱定义的该符号，则会放弃该弱定义符号，执行非弱定义符号
 */
void weak_function(void) __attribute__((weak));

