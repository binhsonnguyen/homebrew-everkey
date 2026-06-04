# homebrew-everkey

Homebrew tap cho [Everkey](https://github.com/binhsonnguyen/Everkey) — bộ gõ tiếng Việt cho macOS.

## Cài đặt

```bash
brew install --cask --no-quarantine binhsonnguyen/everkey/everkey
```

`--no-quarantine` giúp bỏ qua bước "Open Anyway" của Gatekeeper (app ký self-signed,
không qua Apple notarization). Nếu không dùng cờ này, lần đầu mở app hãy vào
**System Settings → Privacy & Security → Security → Open Anyway**.

Sau khi cài, cấp quyền tại **System Settings → Privacy & Security → Accessibility**.
