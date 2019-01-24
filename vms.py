# -*- coding: utf-8 -*-
# -*- coding: utf-8 -*-
from virtualbox.library import MachineState
from virtualbox import VirtualBox

class Py3status:
    format = '{number} vms'


    def vms(self):
        vbox = VirtualBox()
        running_vms = len(list(filter(lambda m: m.state != MachineState.powered_off,  vbox.machines)))
        full_text = self.py3.safe_format(self.format, {'number': running_vms})
        
        if running_vms > 0:
            color = self.py3.COLOR_BAD
        else:
            color = self.py3.COLOR_GOOD

        return {
            'full_text': full_text,
            'color': color,
            'cached_until': self.py3.time_in(seconds=40)
            #'cached_until': self.py3.CACHE_FOREVER

        }

