#!/bin/bash
curl -v -H "My-Header: value" -X POST -F "file=@/path/to/file" https://example.com/upload
