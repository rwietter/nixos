_:

{
  xdg.mimeApps = {
    enable = true;
    defaultApplications = {
      "application/vnd.openxmlformats-officedocument.wordprocessingml.document" = ["onlyoffice-desktopeditors.desktop"]; # .docx
      "application/vnd.openxmlformats-officedocument.presentationml.presentation" = ["onlyoffice-desktopeditors.desktop"]; # .pptx
      "application/zip" = ["xarchiver.desktop"];
      "text/*" = ["code.desktop"]; # Any text files
      "video/*" = ["mpv.desktop"]; # Any video files
      "x-scheme-handler/https" = ["brave.desktop"]; # Links
      "x-scheme-handler/http" = ["brave.desktop"]; # Links
      "x-scheme-handler/mailto" = ["brave.desktop"]; # Links

      "application/pdf" = ["zathura.desktop"]; # .pdf
      "image/png" = ["viewnior.desktop"]; # .png
      "image/jpeg" = ["viewnior.desktop"]; # .jpg
      "image/gif" = ["viewnior.desktop"]; # .gif
      "image/svg+xml" = ["viewnior.desktop"]; # .svg
      "image/*" = ["feh.desktop"]; # Images
      "text/plain" = "code.desktop"; # Plain text
      "inode/directory" = "lf.desktop"; # Directories
    };
  };
}