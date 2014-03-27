#!/usr/bin/env python
import shutil

shutil.copyfile('orig.bin', 'kernel_lds.bin')

data = open('build_lds.bin', 'rb').read()
if (len(data) <= 221884):
    f=open('kernel_lds.bin', 'rb+')
    f.seek(2454)
    f.write(data + '\0\0\x81\xBF' * ((221884 - len(data)) / 4))
    f.seek(1874)
    f.write('\x54\0\0\0')	# NumVgprs after '\x41\x10\x00\x80'
    f.seek(1882)
    f.write('\x2C\0\0\0')	# NumSgprs after '\x42\x10\x00\x80'
    f.close()
else:
    print 'build.bin too long'
