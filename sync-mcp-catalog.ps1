# Sync Unified MCP Catalog from playwright-automation project
# This script automatically copies the latest version from the source and pushes to GitHub

param(
    [switch]$Force,
    [switch]$DryRun
)

$sourceFile = "C:\Users\dogma\Projects\playwright-automation\Unified_MCP_Catalog.md"
$targetFile = ".\Unified_MCP_Catalog.md"

# Check if source file exists
if (!(Test-Path $sourceFile)) {
    Write-Error "Source file not found: $sourceFile"
    exit 1
}

# Check if content has changed
$sourceContent = Get-Content $sourceFile -Raw
$targetContent = if (Test-Path $targetFile) { Get-Content $targetFile -Raw } else { "" }

if ($sourceContent -eq $targetContent) {
    Write-Host "✅ No changes detected in MCP catalog" -ForegroundColor Green
    if (!$Force) {
        exit 0
    }
}

if ($DryRun) {
    Write-Host "🔍 DRY RUN: Would update MCP catalog" -ForegroundColor Yellow
    exit 0
}

# Copy the file
try {
    Copy-Item $sourceFile $targetFile -Force
    Write-Host "📋 Copied newest MCP catalog from playwright project" -ForegroundColor Green
} catch {
    Write-Error "Failed to copy file: $($_.Exception.Message)"
    exit 1
}

# Git operations
try {
    # Check git status
    $status = git status --porcelain
    if ($status -match "Unified_MCP_Catalog.md") {
        Write-Host "📝 Changes detected, committing..." -ForegroundColor Yellow

        # Stage the file
        git add Unified_MCP_Catalog.md

        # Check if we have changes
        $diff = git diff --cached --quiet
        if ($LASTEXITCODE -eq 1) {
            # Create commit message with date and summary
            $date = Get-Date -Format "yyyy-MM-dd"
            $commitMessage = "Update MCP catalog ($date)

- Sync from playwright-automation project
- Latest server configurations and installation guides"

            git commit -m $commitMessage
            Write-Host "✅ Committed MCP catalog updates" -ForegroundColor Green

            # Push changes
            git push origin main
            Write-Host "⬆️ Pushed to GitHub" -ForegroundColor Green
        } else {
            Write-Host "ℹ️ No actual changes to commit" -ForegroundColor Gray
        }
    } else {
        Write-Host "ℹ️ No changes in MCP catalog file" -ForegroundColor Gray
    }
} catch {
    Write-Error "Git operation failed: $($_.Exception.Message)"
    exit 1
}

Write-Host "🎉 MCP Catalog sync complete!" -ForegroundColor Cyan
