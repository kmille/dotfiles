import os


class Py3status:

    def _init(self):
        self.running = False
        self.color = '#FFFFFF'
        self.tea_counter = 400
        self.full_text = "Tea?"
        self.cached_seconds = 3600 * 10

    def _decrement(self):
        self.tea_counter -= 1
        self.full_text = f"{self.tea_counter}s"
        self.cached_seconds = 1

    def __init__(self):
        self._init()

    def tea_info(self):
        if self.running:
            if self.tea_counter == 0:
                os.system('mpv ~/Downloads/annuschka.mp3 >/dev/null 2>&1 &')
                self._init()
            else:
                self._decrement()

            if self.tea_counter < 30:
                self.color = self.py3.COLOR_BAD

        return {
            'full_text': self.full_text,
            'cached_until': self.py3.time_in(seconds=self.cached_seconds),
            'color': self.color,
        }

    def on_click(self, event):
        # start timer
        if event['button'] == 1:
            # if not already enabled
            if not self.running:
                self.running = True
        elif event['button'] == 2:
            self._init()


if __name__ == "__main__":
    """
    Run module in test mode.
    """
    from py3status.module_test import module_test
    module_test(Py3status)
