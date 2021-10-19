



## AI 推断器 SOC 设计与验证平台说明文档



该平台主要包括部分：

- chisel_design：设计部分，使用chisel进行设计，在Intellij IDEA工具实现，具体描述见该文件夹下的README.md
- verilog_sim：验证部分，使用verilog进行验证，在Modelsim工具实现，具体描述见该文件夹下的README.md
- env.sh： sh下的环境配置脚本，在clone项目后需要先`source env.sh`来配置`$PROJ_ROOT`变量，指定当前工作目录；
- env.csh： csh下的环境配置脚本，在clone项目后需要先`source env.sh`来配置`$PROJ_ROOT`变量，指定当前工作目录；

**注意：**使用env.sh（或者env.csh）脚本配置的变量属于临时变量，在每次系统重启后都需要重新配置，如果不想经常配置建议将其中的变量配置为系统变量。

