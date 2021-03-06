set bashx86="%systemroot%\sysnative\bash.exe"
set bashx64="%systemroot%\system32\bash.exe"

if exist %bashx86% set bashpath=%bashx86%
if exist %bashx64% set bashpath=%bashx64%

if not defined delayedexp (
  "%bashpath%" -i -c %bashcmd%
) else (
  "%bashpath%" -i -c "!bashcmd!"
)
