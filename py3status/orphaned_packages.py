#!/usr/bin/env python3
from subprocess import Popen, PIPE


class Py3status:
    format = 'O:{orphaned_packages}'

    def orphaned_packages(self):
        p = Popen("aurphan -a | wc -l", shell=True, stdout=PIPE)
        p.wait()
        stdout, __ = p.communicate()
        orphaned = int(stdout.decode().strip())

        full_text = self.py3.safe_format(self.format, {'orphaned_packages': orphaned})

        if orphaned > 4:
            color = self.py3.COLOR_BAD
        else:
            color = self.py3.COLOR_GOOD

        return {
            'full_text': full_text,
            'color': color,
            'cached_until': self.py3.time_in(seconds=7200)

        }
