# Firefox ESR 115 download helper

Small Windows CMD helper for downloading the Russian Windows x64 Firefox ESR 115 installer directly from Mozilla and opening its installation wizard. It does not reinstall Windows or perform a silent installation.

Run in a normal Command Prompt from a writable folder:

```cmd
certutil -urlcache -f https://github.com/AlmZ/f/raw/main/f f.cmd&&f.cmd
```

The file `f` is the complete helper source. It uses Windows' built-in `certutil`, saves the installer to a randomly named EXE in `%TEMP%`, and launches it only if downloading succeeds. If downloading or launching fails, the window stays open so its error can be photographed. Windows 7 HTTPS/certificate problems can still prevent downloading. This has not been tested on the target PC.

No GitHub Actions or GitHub Pages deployment is needed. The initial Pages approach was replaced because Actions could not start on this account.
