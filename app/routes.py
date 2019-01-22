# -*- coding: utf-8 -*-
from flask import render_template
from app import app
import time
import random


def prime_num(n):
    lst = []
    for i in range(2, n + 1):
        for j in lst:
            if i % j == 0:
                break
        else:
            lst.append(i)
    return lst


def tf(n):
    start_time = time.time()
    f = prime_num(n)
    t = "{:.4} sec.".format(time.time() - start_time)
    return (f, t)


start_time = time.time()


@app.route("/")
def index():
    number = random.randint(1000, 50000)
    res = tf(number)
    context = {"number": number, "pn": res[0], "time": res[1]}
    return render_template("base.html", title=context["time"], context=context)
