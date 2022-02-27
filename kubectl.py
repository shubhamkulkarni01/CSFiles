from powerline_shell.utils import BasicSegment
import os

class Segment(BasicSegment):
    def add_to_powerline(self):
        if os.getenv('KUBECTL_SERVICE_HOST') or os.getenv('KUBERNETES_SERVICE_HOST'):
            powerline = self.powerline
            powerline.append(' %s ' % 'kube',
                             powerline.theme.SSH_FG,
                             powerline.theme.SSH_BG)
