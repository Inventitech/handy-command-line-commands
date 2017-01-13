# time and execute command some_command, redirecting all output (error stream and standard output) to out.log and mirror current contents of out.log on the console
time some_command 2>&1 | tee out.log 

# sum number of lines of files in (sub-)directories
find . -iname "*.log" | xargs wc -l | awk '{print $1}' | paste -sd+ - | bc
