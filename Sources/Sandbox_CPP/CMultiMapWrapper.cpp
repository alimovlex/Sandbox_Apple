#include "include/CMultiMapWrapper.hpp"

#include "MultiMap/MultiMapTest.hpp"

const void * initializeMultiMapWrapper() {
    MultiMapWrapper *multimap = new MultiMapWrapper();
    return (void *)multimap;
}

long multimap_size(const void *object) {
    MultiMapWrapper *multimap = (MultiMapWrapper *)object;
    return multimap->size();
}

bool multimap_empty(const void *object) {
    MultiMapWrapper *multimap = (MultiMapWrapper *)object;
    return multimap->empty();
}

void* multimap_begin(const void *object) {
    MultiMapWrapper *multimap = (MultiMapWrapper *)object;
    return (void*) multimap->begin();
}

void* multimap_end(const void *object) {
    MultiMapWrapper *multimap = (MultiMapWrapper *)object;
    return (void*) multimap->end();
}

bool multimap_increment(const void *object) {
    MultiMapIterator *iterator = (MultiMapIterator *)object;
    return iterator->increment();
}

bool multimap_decrement(const void *object) {
    MultiMapIterator *iterator = (MultiMapIterator *)object;
    return iterator->decrement();
}


