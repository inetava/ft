import os


class Config(object):
    NMIN = int(os.environ.get("NMIN")) or 1000
    NMAX = int(os.environ.get("NMAX")) or 50000
