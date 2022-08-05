#!/bin/bash

find lib -name "*.g.dart" -exec flutter format {} \;
find lib -name "*.config.dart" -exec flutter format {} \;