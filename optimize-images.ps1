# Image Optimization Script for GitHub Pages
# This script compresses images to improve page load performance

param(
    [string]$SourcePath = "D:\Projects\gmrafi.github.io\photos",
    [int]$Quality = 80,
    [int]$MaxWidth = 1200
)

Write-Host "Starting image optimization..." -ForegroundColor Green

# Check if ImageMagick is available (you can install it via Chocolatey: choco install imagemagick)
$magickAvailable = Get-Command magick -ErrorAction SilentlyContinue

if (-not $magickAvailable) {
    Write-Host "ImageMagick not found. Installing via Chocolatey..." -ForegroundColor Yellow
    try {
        choco install imagemagick -y
    } catch {
        Write-Host "Please install ImageMagick manually or use an online image optimizer." -ForegroundColor Red
        Write-Host "Alternative: Use https://tinypng.com/ or https://imageoptim.com/" -ForegroundColor Yellow
        exit 1
    }
}

# Get all images
$images = Get-ChildItem -Path $SourcePath -Recurse -Include "*.jpg","*.jpeg","*.png" | Where-Object { $_.Length -gt 100KB }

foreach ($image in $images) {
    $originalSize = [math]::Round($image.Length / 1MB, 2)
    $outputPath = $image.FullName

    Write-Host "Optimizing $($image.Name) (${originalSize}MB)..." -ForegroundColor Cyan

    # Compress and resize if needed
    $args = @(
        $image.FullName,
        "-quality", $Quality,
        "-resize", "${MaxWidth}x${MaxWidth}>",
        "-strip",
        $outputPath
    )

    & magick $args

    $newSize = [math]::Round((Get-Item $outputPath).Length / 1MB, 2)
    $savings = [math]::Round(($originalSize - $newSize) / $originalSize * 100, 1)

    Write-Host "  ✓ Optimized: ${newSize}MB (${savings}% reduction)" -ForegroundColor Green
}

Write-Host "Image optimization complete!" -ForegroundColor Green