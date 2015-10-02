#STM32CubeMX to Makefile

This program generates a Makefile from STM32CubeMX (http://www.st.com/stm32cube) created project. It is intended to be used along with GNU Make utility (www.gnu.org/software/make) and GNU tools for ARM (https://launchpad.net/gcc-arm-embedded) to compile STM32 firmware. Refer to my blog post http://www.ba0sh1.com/opensource-stm32-development for setup of integrated development environment.  

Copyright (c) 2015, Baoshi Zhu. All rights reserved.

Source code in this project is governed by Apache License 2.0 (http://www.apache.org/licenses/LICENSE-2.0)

# Usage


## Way 1

* Generate code in STM32CubeMX for TrueSTUDIO toolchain.
* Run `python /path/to/CubeMX2Makefile/CubeMX2Makefile.py path_to_project`.

If there will be an error with "link script" then generate code for "SW4STM32" toolchain and copy `SW4STM32/*/*.ld` to `TrueSTUDIO/*/*.ld`.

## Way 2

* Enter to the directory of the project.
* Run `make -C /path/to/CubeMX2Makefile`

