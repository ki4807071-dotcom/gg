# bimbimbambam

Ứng dụng desktop nhỏ gọn cho Messenger, cho phép thêm website và mở mỗi trang
trong một cửa sổ riêng trên macOS, Windows và Linux.

## Tính năng

- Messenger trong cửa sổ riêng, có thông báo, số tin chưa đọc và khay hệ thống.
- Thêm, mở và xoá website tại **Cài đặt → Websites**.
- Website được mở trong cửa sổ độc lập, không chạy script Messenger và không có
  quyền Tauri từ xa. Chỉ chấp nhận địa chỉ `http://` và `https://`.
- Kế thừa theme, phím tắt và tuỳ chỉnh giao diện từ dự án gốc.

## Build

Cài Rust stable, Node.js và
[các yêu cầu của Tauri](https://v2.tauri.app/start/prerequisites/), sau đó chạy:

```sh
npm install
npm run tauri dev
npm run tauri build
```

Chạy Rust tests bằng `cargo test` trong thư mục `src-tauri/`.

## Dự án gốc và giấy phép

Dự án này phát triển từ [fMess](https://github.com/toanbku/fmess) của Toan Ho,
giữ giấy phép MIT và thông báo bản quyền trong [LICENSE](LICENSE). Thay đổi của
bản này gồm nhận diện bimbimbambam và hỗ trợ mở website do người dùng thêm.

Messenger và Facebook là nhãn hiệu của Meta Platforms, Inc. Dự án độc lập,
không liên kết và không được Meta chứng thực.

Trình cập nhật trỏ về repository này. Để phát hành bản cập nhật đã ký, cần cấu
hình khoá ký khớp với public key trong `src-tauri/tauri.conf.json`.
