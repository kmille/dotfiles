#!/usr/bin/env python3
import arrow
import re


class Py3status:
    format = 'U:{days}d'

    def last_update(self):
        with open("/var/log/pacman.log") as f:
            pacman_logs = f.read()
        pacman_logs = pacman_logs.splitlines()[::-1]
        for line in pacman_logs:
            if "Running 'pacman -Syu'" in line or "Running 'pacman -Suy'" in line:
                date = re.search(r'\[(.*)\] \[PACMAN.*', line).group(1)
                break
        last_update = arrow.get(date)
        diff = arrow.now() - last_update

        full_text = self.py3.safe_format(self.format, {'days': diff.days})

        if diff.days > 7:
            color = self.py3.COLOR_BAD
        else:
            color = self.py3.COLOR_GOOD

        return {
            'full_text': full_text,
            'color': color,
            'cached_until': self.py3.time_in(seconds=900)

        }
