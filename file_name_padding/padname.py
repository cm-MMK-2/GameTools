import os
path = os.getcwd()
for filename in os.listdir(path):
    prefix, num = filename[:-4].split('_')
    num = num.zfill(4)
    new_filename = prefix + "_" + num + ".png"
    os.rename(os.path.join(path, filename), os.path.join(path, new_filename))