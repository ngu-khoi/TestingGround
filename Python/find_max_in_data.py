# iterate through the list, find the difference between i and i+1, and store the max difference
def find_max_in_data(p, sp):
    max_diff = 0
    bspindex = 0
    sspindex = 0

    for i in range(len(p)-1):
        if p[i] - p[i+1] >= 0:
            diff = p[i] - p[i+1] - 50
            if diff > max_diff:
                max_diff = diff
                bspindex = i+1
                sspindex = i
        else:
            diff = p[i+1] - p[i]
            if diff > max_diff:
                max_diff = diff
                bspindex = i
                sspindex = i+1
    
    ssp = sp[sspindex]
    bsp = sp[bspindex]