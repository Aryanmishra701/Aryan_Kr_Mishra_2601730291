# Linux lab — evidence collection

Run from the root of the cloned repository:

```bash
{
  echo '===== lscpu ====='; lscpu
  echo '===== free -h ====='; free -h
  echo '===== lsblk ====='; lsblk -o NAME,SIZE,ROTA,TYPE,MODEL
  echo '===== uname -a ====='; uname -a
  echo '===== OS release ====='; cat /etc/os-release
  echo '===== ls -la ~ ====='; ls -la ~
  echo '===== ps aux | head -10 ====='; ps aux | head -10
  echo '===== df -h ====='; df -h
  echo '===== free -h ====='; free -h
} > Linux/commands_output.txt
```

Use these outputs to complete `system_profile.md`. For `lsblk`, identify the primary drive; `ROTA=0` generally indicates solid-state media and `ROTA=1` rotational media.

```bash
git add Linux/
git commit -m "docs: add system profile and Linux command outputs"
```
