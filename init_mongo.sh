#!/usr/bin/env bash

mongoimport --host localhost --db intelygenz --collection restaurant --type json --file /restaurant.json
