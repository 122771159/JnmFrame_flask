from flask import jsonify


def success(data, code=200):
    response = {
        "success": True,
        "status": 0,
        "data": data
    }
    return jsonify(response), code


def fail(data, code=400):
    response = {
        "success": False,
        "status": 1,
        "statusInfo": data
    }
    return jsonify(response), code


def get_error(e):
    return jsonify({
        "success": e.success,
        "status": e.status,
        "statusInfo": e.status_info,
    }), e.http_status
