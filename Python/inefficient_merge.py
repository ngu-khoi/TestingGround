# iterate through arrays of arrays and merge them if there is an element in common

def merge(array):
    # create a new array to store the merged arrays
    merged = []

    # iterate through the array of arrays
    for item1 in array:
        # iterate through the array of arrays
        for item2 in array:
            # check if there is an element in common
            if set(item1).intersection(item2):
                # merge the arrays
                merged.append(list(set(item1 + item2)))

    # return the merged array
    # remove duplicates and remove subsets
    return [list(x) for x in set(tuple(x) for x in merged) if not any(set(x) < set(y) for y in merged)]


print(merge([['Dog', 'Animal'], ['Firm', 'Work'], ['Work', 'Facility'], ['Woman', 'Girl'], ['Woman', 'Man']]))