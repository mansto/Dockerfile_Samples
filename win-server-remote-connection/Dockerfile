FROM microsoft/windowsservercore
RUN net user /add manfred
RUN net user manfred o1iUKm3m
RUN net localgroup "Remote Desktop Users" manfred /add
RUN net localgroup "Administrators" manfred /add
RUN cmd /k reg add "HKLM\System\CurrentControlSet\Control\Terminal Server" /v TemporaryALiC /t REG_DWORD /d 1