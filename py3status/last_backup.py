#!/usr/bin/env python3
import arrow


class Py3status:
    format = 'B:{days}d'

    def last_update(self):
        with open("/var/tmp/borg-backup.done") as f:
            last_backup = f.read()
        diff = arrow.now() - arrow.get(last_backup, "MM/DD/YY")
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


if __name__ == "__main__":
    """
    Run module in test mode.
    """
    from py3status.module_test import module_test
    module_test(Py3status)
