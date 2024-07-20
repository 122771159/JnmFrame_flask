from flask import jsonify

from common.R import get_error


def handle_base_exception(error):
    return get_error(error)
