PA_INCLUDES = /usr/include/pulse
all:
	h2xml -c -o pa.xml $(PA_INCLUDES)/*
	xml2py -k efstd -o lib_pulseaudio.py -l 'pulse' -r '(pa|PA)_.+' pa.xml
