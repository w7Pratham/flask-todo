#!/bin/bash

nohup gunicorn --bind 0.0.0.0:5001 wsgi:app &