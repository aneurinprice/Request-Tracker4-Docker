# Logging to file isn't a good default strategy; see #747076
Set($LogToFile , undef);
Set($LogDir, '/var/log/request-tracker4');
Set($LogToFileNamed , "rt.log");    #log to rt.log

# Log to Syslog by default instead
Set($LogToSyslog, 'warning');
