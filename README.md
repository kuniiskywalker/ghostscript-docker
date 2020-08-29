# Build

```
docker build -t ghostscript .
```

# Example

```
docker run -v $PWD/pdf:/pdf ghostscript \
  gs \
    -sDEVICE=pdfwrite \
    -dCompatibilityLevel=1.4 \
    -dPDFSETTINGS=/ebook \
    -dNOPAUSE \
    -dQUIET \
    -dBATCH \
    -sOutputFile=/pdf/output.pdf \
  /pdf/input.pdf         
```

# Reference

-dPDFSETTINGS=/screen (screen-view-only quality, 72 dpi images)

-dPDFSETTINGS=/ebook (low quality, 150 dpi images)

-dPDFSETTINGS=/printer (high quality, 300 dpi images)

-dPDFSETTINGS=/prepress (high quality, color preserving, 300 dpi imgs)

-dPDFSETTINGS=/default (almost identical to /screen)
