#solution 1

import string
def DNA_strand(dna):
    return dna.translate(string.maketrans("ATCG","TAGC"))
    
    
#solution 2

def DNA_strand(dna):
        dna = dna.upper()
        newstrand = ""
        for i in range(0, len(dna)):
            if dna[i] == "T":
                newstrand += "A"

            if dna[i] == "A":
                newstrand += "T"

            if dna[i] == "G":
                newstrand += "C"

            if dna[i] == "C":
                newstrand += "G"

        return newstrand