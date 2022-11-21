from os.path import expanduser
import datetime

file = open(expanduser("~") + '/Desktop/i_was_created.txt', 'w')
file.write("This LinuxShellTips Tutorial Actually worked!\n" + str(datetime.datetime.now()))
file.close()