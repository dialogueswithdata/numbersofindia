import os
import json
from flask import Flask, render_template, request
import csv
import re
import datetime
import time
import numpy as np
import psycopg2
import psycopg2.extras
# from parse_sql_to_json import parse_text


app = Flask(__name__)


@app.route("/index")
@app.route("/")
def index():
    return render_template("index.html")


@app.route("/item")
def itemview():
    return render_template("itemview.html")


@app.route("/getItems", methods=['POST'])
def getItems():
    #table_name = request.form['table_name']
    conn = psycopg2.connect(
        "dbname='omemqnfx' user='omemqnfx' host='elmer.db.elephantsql.com' password='8VSwANQ4OPI-pMDU5zGKbgOe4MtHZ369' port='5432'")

    cur = conn.cursor(cursor_factory=psycopg2.extras.DictCursor)

    getItems_sql = """
                        SELECT 
                                  i.id as item_id
                                , i.title
                                , i.description
                                , i.media_type
                                , i.url
                                , to_char(i.creation_time, 'DD-MM-YYYY') as creation_time
                                , p.first_name as creator_first_name
                                , p.last_name as creator_last_name
                        FROM items i
                        LEFT OUTER JOIN people p ON i.creator_id = p.id
                        ORDER BY i.creation_time DESC
                    """

    cur.execute(getItems_sql)

    all_items = []

    rows = cur.fetchall()
    for row in rows:
        new_row = {
            "item_id": row['item_id'], "title": row['title'], "description": row['description'], "media_type": row['media_type'], "url": row['url'], "creation_time": row['creation_time'], "creator_first_name": row['creator_first_name'], "creator_last_name": row['creator_last_name']
        }
        all_items.append(new_row)

    conn.close()
    all_items_json = json.dumps({"all_items": all_items
                                 })
    return all_items_json


#============================================================================


if __name__ == "__main__":
    # port = 2018
    # os.system("open http://localhost:{0}".format(port))

    # app.debug = True # Turn False later
    # app.run(host='0.0.0.0', port=port)
    app.run(host='0.0.0.0')
