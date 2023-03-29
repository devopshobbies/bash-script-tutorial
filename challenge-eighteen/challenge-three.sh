#!/bin/bash
0 17 * * 1-5 cat /path/to/error.log | mail -s "Error Log" user@example.com
