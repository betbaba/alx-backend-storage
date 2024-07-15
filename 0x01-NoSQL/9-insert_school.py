#!/usr/bin/env python3
"""A Python script that inserts a new document
   in a collection based on kwargs
"""
import pymongo


def insert_school(mongo_collection, **kwargs):
    """inserts a new document in a collection based on kwargs """
    newId = []
    for coll in kwargs.values():
        cursor = mongo_collection.insert_one(coll)
        newId.append(cursor.inserted_id)
    return newId
