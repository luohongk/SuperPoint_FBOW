from os import walk
import os
DBDIR = "/home/lhk/workspace/SuperPoint_FBOW/utils/renamed_images" #the dir where images reside e.g. C:/database
DBNAME = "euroc" #e.g. database (in the line above)
CODEDIR = "/home/lhk/workspace/SuperPoint_FBOW/build/utils" #e.g. H:/fbow-windows/build/bin/Release
DESCRIPTOR = "superpoint"
RESULTSDIR = "/home/lhk/workspace/SuperPoint_FBOW/output"#e.g. "C:/FBoWResults"
OUTPUT = RESULTSDIR
MKDIRCMD = "mkdir " + OUTPUT
FeaturesExtractCmd = CODEDIR + "/" + "fbow_create_voc_step0"
VocabCreateCmd = CODEDIR + "/" + "fbow_create_voc_step1" + " "+OUTPUT + "/superpoint.fbow" +" "+OUTPUT + "/superpointVoc.fbow"
ImageMatchingCmd = CODEDIR + "/" + "image_matching" +" "+OUTPUT + "/superpointVoc.fbow" +" "+OUTPUT + ""

imagesFileName = ""
i = 1
for (dirpath, dirnames, filenames) in walk(DBDIR):
    for filename in filenames:
        imagesFileName += " " + DBDIR + "/" + filename
    break
FeaturesExtractCmd += imagesFileName
ImageMatchingCmd += imagesFileName
print("cd " + RESULTSDIR + " & " + "mkdir " + DESCRIPTOR + DBNAME)
os.system("cd " + RESULTSDIR + " & " + "mkdir " + DESCRIPTOR + DBNAME)
print(FeaturesExtractCmd)
os.system(FeaturesExtractCmd)
print(VocabCreateCmd)
os.system(VocabCreateCmd)
print(ImageMatchingCmd)
os.system(ImageMatchingCmd)