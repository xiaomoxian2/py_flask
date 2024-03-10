# -*- encoding=UTF-8 -*-

from flask import Flask, render_template, request, make_response, redirect, flash, get_flashed_messages
import logging
from logging.handlers import RotatingFileHandler

app = Flask(__name__)
app.jinja_env.line_statement_prefix = '#'
app.secret_key = 'nowcoder123'

@app.route('/')
@app.route('/index')
def index():
    return "789------------------------++++"

if __name__ == '__main__':
    app.run(debug=True, host="0.0.0.0")

