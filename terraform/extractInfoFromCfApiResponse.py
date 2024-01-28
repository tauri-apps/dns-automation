# Requirements: Python3, pip3 install easygui
# Usage: Save output of https://api.cloudflare.com/client/v4/zones/{zone_id}/dns_records as JSON
# Run this, open JSON, get Info required for Terraform

import json
import easygui as g

path = g.fileopenbox()
jsonFile = open(path)
json = json.load(jsonFile)

for record in json['result']:
    out = {
        'id': record['id'],
        'name': record['name'],
        'type': record['type'],
        'content': record['content'],
    }
    if 'comment' in record:
        out['comment'] = record['comment']
    if 'data' in record:
        out['data'] = record['data']
    print(out)