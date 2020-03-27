#!/bin/bash

cat input.csv | awk '
	BEGIN {
		i = 0
	}
	{
		arr[i] = $0
		i++;
	}
	END {
		for(i=0; i<length(arr); i++) {
			num = match(arr[i], /\d/);
			if (num != 0) {
				print arr[i]
			}
		}
	}
'

