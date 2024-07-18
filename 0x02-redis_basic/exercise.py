#!/usr/bin/env python3
"""Contains class Cache
"""
import redis
import uuid


class Cache:
    """Cache class """
    def __init__(self):
        """creaet instance of redis client
           also flushes the instance
        """
        self._redis = redis.Redis()
        self._redis.flushdb()

    def store(self, data) -> str:
        """Arguments:
                data : any data type to be stored
           Returns:
                id: a unique id for the value data
        """
        self.id = str(uuid.uuid4())
        self._redis.set(self.id, data)
        return self.id

    def get(self, key: str, fn: callable = None):
        """Converts the data back to the desired format """
        value = self._redis.get(key)
        if value is not None and fn is not None:
            value = fn(value)
            return value

    def get_str(self, key: str) -> str:
        """returns string """
        return self.get(key, lambda x: x.decode("utf-8"))

    def get_int(self, key: str) -> int:
        """returns int """
        return self.get(key, lambda x: int(x))
