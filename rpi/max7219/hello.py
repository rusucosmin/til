from luma.led_matrix.device import max7219
from luma.core.interface.serial import spi, noop
from luma.core.render import canvas
from luma.core.virtual import viewport
from luma.core.legacy import text, show_message
from luma.core.legacy.font import proportional, CP437_FONT, TINY_FONT, SINCLAIR_FONT, LCD_FONT
from datetime import datetime
import time

serial = spi(port=0, device=0, gpio=noop())
device = max7219(serial, cascaded=4, block_orientation=90, blocks_arranged_in_reverse_order=True)
device.contrast(16)

def hello_world():
  now = datetime.now()
  with canvas(device) as draw:
    show_message(device, "hello hello", fill="red",font=(CP437_FONT),scroll_delay=0.08)

hello_world()
