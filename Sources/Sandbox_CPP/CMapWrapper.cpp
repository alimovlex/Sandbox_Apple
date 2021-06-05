#include "include/CMapWrapper.hpp"

#include "Map/MapTest.hpp"

const void * initializeMapWrapper() {
    MapWrapper *map = new MapWrapper();
    return (void *)map;
}

long map_size(const void *object) {
    MapWrapper *map = (MapWrapper *)object;
    return map->size();
}

bool map_empty(const void *object) {
    MapWrapper *map = (MapWrapper *)object;
    return map->empty();
}

void* map_begin(const void *object) {
    MapWrapper *map = (MapWrapper *)object;
    return (void*) map->begin();
}

void* map_end(const void *object) {
    MapWrapper *map = (MapWrapper *)object;
    return (void*) map->end();
}

bool map_increment(const void *object) {
    MapIterator *iterator = (MapIterator *)object;
    return iterator->increment();
}

bool map_decrement(const void *object) {
    MapIterator *iterator = (MapIterator *)object;
    return iterator->decrement();
}


