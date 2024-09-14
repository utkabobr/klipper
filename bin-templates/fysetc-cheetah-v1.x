CONFIG_LOW_LEVEL_OPTIONS=y
# CONFIG_MACH_AVR is not set
# CONFIG_MACH_ATSAM is not set
# CONFIG_MACH_ATSAMD is not set
# CONFIG_MACH_LPC176X is not set
CONFIG_MACH_STM32=y
# CONFIG_MACH_HC32F460 is not set
# CONFIG_MACH_RP2040 is not set
# CONFIG_MACH_PRU is not set
# CONFIG_MACH_AR100 is not set
# CONFIG_MACH_LINUX is not set
# CONFIG_MACH_SIMU is not set
CONFIG_BOARD_DIRECTORY="stm32"
CONFIG_MCU="stm32f103xe"
CONFIG_CLOCK_FREQ=72000000
CONFIG_SERIAL=y
CONFIG_FLASH_SIZE=0x10000
CONFIG_FLASH_BOOT_ADDRESS=0x8000000
CONFIG_RAM_START=0x20000000
CONFIG_RAM_SIZE=0x5000
CONFIG_STACK_SIZE=512
CONFIG_FLASH_APPLICATION_ADDRESS=0x8000000
CONFIG_STM32_SELECT=y
CONFIG_MACH_STM32F103=y
# CONFIG_MACH_STM32F207 is not set
# CONFIG_MACH_STM32F401 is not set
# CONFIG_MACH_STM32F405 is not set
# CONFIG_MACH_STM32F407 is not set
# CONFIG_MACH_STM32F429 is not set
# CONFIG_MACH_STM32F446 is not set
# CONFIG_MACH_STM32F765 is not set
# CONFIG_MACH_STM32F031 is not set
# CONFIG_MACH_STM32F042 is not set
# CONFIG_MACH_STM32F070 is not set
# CONFIG_MACH_STM32F072 is not set
# CONFIG_MACH_STM32G070 is not set
# CONFIG_MACH_STM32G071 is not set
# CONFIG_MACH_STM32G0B0 is not set
# CONFIG_MACH_STM32G0B1 is not set
# CONFIG_MACH_STM32G431 is not set
# CONFIG_MACH_STM32G474 is not set
# CONFIG_MACH_STM32H723 is not set
# CONFIG_MACH_STM32H743 is not set
# CONFIG_MACH_STM32H750 is not set
# CONFIG_MACH_STM32L412 is not set
# CONFIG_MACH_N32G452 is not set
# CONFIG_MACH_N32G455 is not set
# CONFIG_MACH_STM32F103x6 is not set
CONFIG_MACH_STM32F1=y
CONFIG_HAVE_STM32_USBFS=y
CONFIG_HAVE_STM32_CANBUS=y
# CONFIG_STM32F103GD_DISABLE_SWD is not set
CONFIG_STM32_DFU_ROM_ADDRESS=0
# CONFIG_STM32_FLASH_START_2000 is not set
# CONFIG_STM32_FLASH_START_5000 is not set
# CONFIG_STM32_FLASH_START_7000 is not set
# CONFIG_STM32_FLASH_START_8000 is not set
# CONFIG_STM32_FLASH_START_8800 is not set
# CONFIG_STM32_FLASH_START_9000 is not set
# CONFIG_STM32_FLASH_START_10000 is not set
# CONFIG_STM32_FLASH_START_800 is not set
# CONFIG_STM32_FLASH_START_1000 is not set
# CONFIG_STM32_FLASH_START_4000 is not set
CONFIG_STM32_FLASH_START_0000=y
CONFIG_STM32_CLOCK_REF_8M=y
# CONFIG_STM32_CLOCK_REF_12M is not set
# CONFIG_STM32_CLOCK_REF_16M is not set
# CONFIG_STM32_CLOCK_REF_20M is not set
# CONFIG_STM32_CLOCK_REF_24M is not set
# CONFIG_STM32_CLOCK_REF_25M is not set
# CONFIG_STM32_CLOCK_REF_INTERNAL is not set
CONFIG_CLOCK_REF_FREQ=8000000
CONFIG_STM32F0_TRIM=16
# CONFIG_STM32_USB_PA11_PA12 is not set
CONFIG_STM32_SERIAL_USART1=y
# CONFIG_STM32_SERIAL_USART1_ALT_PB7_PB6 is not set
# CONFIG_STM32_SERIAL_USART2 is not set
# CONFIG_STM32_SERIAL_USART2_ALT_PD6_PD5 is not set
# CONFIG_STM32_SERIAL_USART3 is not set
# CONFIG_STM32_SERIAL_USART3_ALT_PD9_PD8 is not set
# CONFIG_STM32_CANBUS_PA11_PA12 is not set
# CONFIG_STM32_CANBUS_PA11_PB9 is not set
# CONFIG_STM32_MMENU_CANBUS_PB8_PB9 is not set
# CONFIG_STM32_MMENU_CANBUS_PD0_PD1 is not set
CONFIG_SERIAL_BAUD=250000
CONFIG_USB_VENDOR_ID=0x1d50
CONFIG_USB_DEVICE_ID=0x614e
CONFIG_USB_SERIAL_NUMBER="12345"
CONFIG_WANT_GPIO_BITBANGING=y
CONFIG_WANT_DISPLAYS=y
CONFIG_WANT_SENSORS=y
CONFIG_WANT_LIS2DW=y
CONFIG_WANT_LDC1612=y
CONFIG_WANT_SOFTWARE_I2C=y
CONFIG_WANT_SOFTWARE_SPI=y
CONFIG_NEED_SENSOR_BULK=y
CONFIG_CANBUS_FREQUENCY=1000000
CONFIG_INITIAL_PINS=""
CONFIG_HAVE_GPIO=y
CONFIG_HAVE_GPIO_ADC=y
CONFIG_HAVE_GPIO_SPI=y
CONFIG_HAVE_GPIO_I2C=y
CONFIG_HAVE_GPIO_HARD_PWM=y
CONFIG_HAVE_STRICT_TIMING=y
CONFIG_HAVE_CHIPID=y
CONFIG_HAVE_STEPPER_BOTH_EDGE=y
CONFIG_HAVE_BOOTLOADER_REQUEST=y
CONFIG_INLINE_STEPPER_HACK=y
