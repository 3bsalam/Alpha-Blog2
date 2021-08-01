#!/bin/bash
RAILS_ENV=production rails assets:precompile
RAILS_SERVE_STATIC_FILES=true rails server -e production