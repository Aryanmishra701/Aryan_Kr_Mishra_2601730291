# Shell scripting lab

Both scripts are authored for Aryan Kr Mishra (roll number 2601730291).

From the repository root:

```bash
chmod +x ShellScripts/sysinfo.sh ShellScripts/backup.sh
./ShellScripts/sysinfo.sh | tee ShellScripts/sysinfo_output.txt
./ShellScripts/backup.sh "$HOME/DeveloperPortfolio"
```

Verify the archive and log in `~/DeveloperPortfolio_Backups/`. Capture the successful backup terminal screen as `Screenshots/backup_demo.png`.

```bash
git add ShellScripts/
git commit -m "feat: add system report and backup automation scripts"
```
