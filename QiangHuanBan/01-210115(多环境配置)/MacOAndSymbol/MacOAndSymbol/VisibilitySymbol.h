//
//  VisibilitySymbol.h
//  MacOAndSymbol
//
//  Created by yyj on 2021/11/20.
//

// 测试符号可见性


// -O1 -Os 生成目标文件时优化
// dead code strip 死代码剥离 链接时优化
// strip 剥离符号，剥离生成的 mach-o 文件中的符号

extern int hidden_y;
extern double default_y;
extern double protected_y;
