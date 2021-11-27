//
//  WeakImportSymbol.h
//  Logic0115Demo01
//
//  Created by yyj on 2021/1/16.
//

//
/**
 弱引用符号（Weak Reference Symbol）：
 表示此未定义符号是弱引用。如果动态链接器找不到该符号的定义，则将其设置为0。链接器会将此符号设置弱链接标志。
 */

/// 弱引用符号（Weak Reference Symbol）：
void weak_import_function(void) __attribute__((weak_import));


