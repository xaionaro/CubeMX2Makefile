
STM32CUBEMX_PATH=/usr/local/STMicroelectronics/STM32Cube/STM32CubeMX/STM32CubeMX.exe

all: project_toolchains_dirs makefile

project_toolchains_dirs:
	java -jar $(STM32CUBEMX_PATH) -q project_toolchains_dirs.cubemx $(PWD)/*.ioc
	cp "$(wildcard $(PWD)/SW4STM32/*/*.ld)" "$(wildcard $(PWD)/TrueSTUDIO/*/*.ld)"

makefile:
	python CubeMX2Makefile.py "$(PWD)"

