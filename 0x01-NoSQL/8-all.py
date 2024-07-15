#!/usr/bin/env python3
"""a Python function that lists all documents in a collection """
import pymongo


def list_all(mongo_collection):
    """lists all documents in a collection """
    cursor = mongo_collection.find({})
    documents = []
    for document in cursor:
        documents.append(document)
    return documents
